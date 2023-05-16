# Enable Realtek 8822CS wifi/bt module
BOARD_CONNECTIVITY_VENDOR := Realtek
BOARD_CONNECTIVITY_MODULE := rtl8822cs

include device/rockchip/rk3399/BoardConfig.mk

# Fix compilation with duplicated rules
BUILD_BROKEN_DUP_RULES := true

BOARD_SENSOR_ST := true
BOARD_SENSOR_COMPASS_AK8963-64 := true
BOARD_SENSOR_MPU_PAD := false
BOARD_COMPASS_SENSOR_SUPPORT := true
BOARD_GYROSCOPE_SENSOR_SUPPORT := true
CAMERA_SUPPORT_AUTOFOCUS:= false

BOARD_CAMERA_SUPPORT := true
BOARD_CAMERA_SUPPORT_EXT := true
PRODUCT_KERNEL_CONFIG := rockchip_defconfig android-11.config rk3399_vaaman.config
PRODUCT_KERNEL_DTS := rk3399-vaaman-android
PRODUCT_UBOOT_CONFIG := rk3399-vaaman-android
PRODUCT_KERNEL_PATH := kernel
TARGET_PREBUILT_KERNEL := $(PRODUCT_KERNEL_PATH)/arch/arm64/boot/Image
BOARD_PREBUILT_DTBIMAGE_DIR := $(PRODUCT_KERNEL_PATH)/arch/arm64/boot/dts/rockchip
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 113246208

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := false
BOARD_HAS_RK_4G_MODEM := false

BUILD_WITH_GOOGLE_MARKET := false
BUILD_WITH_GOOGLE_GMS_EXPRESS := false
BUILD_WITH_GOOGLE_MARKET_ALL := false

ifeq ($(strip $(BOARD_USES_AB_IMAGE)), true)
    include device/rockchip/common/BoardConfig_AB.mk
    TARGET_RECOVERY_FSTAB := device/rockchip/rk3399/rk3399_vaaman/recovery.fstab_AB
endif

