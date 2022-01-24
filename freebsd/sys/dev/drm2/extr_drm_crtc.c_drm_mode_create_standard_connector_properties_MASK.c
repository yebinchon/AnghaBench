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
struct TYPE_2__ {struct drm_property* dpms_property; struct drm_property* edid_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_MODE_PROP_BLOB ; 
 int DRM_MODE_PROP_IMMUTABLE ; 
 int /*<<< orphan*/  drm_dpms_enum_list ; 
 struct drm_property* FUNC1 (struct drm_device*,int,char*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	struct drm_property *edid;
	struct drm_property *dpms;

	/*
	 * Standard properties (apply to all connectors)
	 */
	edid = FUNC1(dev, DRM_MODE_PROP_BLOB |
				   DRM_MODE_PROP_IMMUTABLE,
				   "EDID", 0);
	dev->mode_config.edid_property = edid;

	dpms = FUNC2(dev, 0,
				   "DPMS", drm_dpms_enum_list,
				   FUNC0(drm_dpms_enum_list));
	dev->mode_config.dpms_property = dpms;

	return 0;
}