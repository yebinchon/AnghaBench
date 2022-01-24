#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_property {int dummy; } ;
struct TYPE_2__ {void* tv_hue_property; void* tv_saturation_property; void* tv_overscan_property; void* tv_flicker_reduction_property; void* tv_contrast_property; void* tv_brightness_property; int /*<<< orphan*/  tv_mode_property; void* tv_bottom_margin_property; void* tv_top_margin_property; void* tv_right_margin_property; void* tv_left_margin_property; struct drm_property* tv_subconnector_property; struct drm_property* tv_select_subconnector_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_PROP_ENUM ; 
 int /*<<< orphan*/  DRM_MODE_PROP_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,char*,int) ; 
 struct drm_property* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drm_tv_select_enum_list ; 
 int /*<<< orphan*/  drm_tv_subconnector_enum_list ; 

int FUNC5(struct drm_device *dev, int num_modes,
				  char *modes[])
{
	struct drm_property *tv_selector;
	struct drm_property *tv_subconnector;
	int i;

	if (dev->mode_config.tv_select_subconnector_property)
		return 0;

	/*
	 * Basic connector properties
	 */
	tv_selector = FUNC3(dev, 0,
					  "select subconnector",
					  drm_tv_select_enum_list,
					  FUNC0(drm_tv_select_enum_list));
	dev->mode_config.tv_select_subconnector_property = tv_selector;

	tv_subconnector =
		FUNC3(dev, DRM_MODE_PROP_IMMUTABLE,
				    "subconnector",
				    drm_tv_subconnector_enum_list,
				    FUNC0(drm_tv_subconnector_enum_list));
	dev->mode_config.tv_subconnector_property = tv_subconnector;

	/*
	 * Other, TV specific properties: margins & TV modes.
	 */
	dev->mode_config.tv_left_margin_property =
		FUNC4(dev, 0, "left margin", 0, 100);

	dev->mode_config.tv_right_margin_property =
		FUNC4(dev, 0, "right margin", 0, 100);

	dev->mode_config.tv_top_margin_property =
		FUNC4(dev, 0, "top margin", 0, 100);

	dev->mode_config.tv_bottom_margin_property =
		FUNC4(dev, 0, "bottom margin", 0, 100);

	dev->mode_config.tv_mode_property =
		FUNC2(dev, DRM_MODE_PROP_ENUM,
				    "mode", num_modes);
	for (i = 0; i < num_modes; i++)
		FUNC1(dev->mode_config.tv_mode_property, i,
				      i, modes[i]);

	dev->mode_config.tv_brightness_property =
		FUNC4(dev, 0, "brightness", 0, 100);

	dev->mode_config.tv_contrast_property =
		FUNC4(dev, 0, "contrast", 0, 100);

	dev->mode_config.tv_flicker_reduction_property =
		FUNC4(dev, 0, "flicker reduction", 0, 100);

	dev->mode_config.tv_overscan_property =
		FUNC4(dev, 0, "overscan", 0, 100);

	dev->mode_config.tv_saturation_property =
		FUNC4(dev, 0, "saturation", 0, 100);

	dev->mode_config.tv_hue_property =
		FUNC4(dev, 0, "hue", 0, 100);

	return 0;
}