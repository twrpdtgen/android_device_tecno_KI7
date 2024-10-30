#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from KI7 device
$(call inherit-product, device/tecno/KI7/device.mk)

PRODUCT_DEVICE := KI7
PRODUCT_NAME := omni_KI7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KI7
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ki7_v7510-user 12 SP1A.210812.016 354590 release-keys"

BUILD_FINGERPRINT := TECNO/KI7-GL/TECNO-KI7:12/SP1A.210812.016/230615V2244:user/release-keys
