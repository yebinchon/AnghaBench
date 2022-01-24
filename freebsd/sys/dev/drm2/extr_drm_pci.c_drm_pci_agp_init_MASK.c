#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_2__* agp; } ;
struct TYPE_3__ {scalar_t__ ai_aperture_base; int /*<<< orphan*/  ai_aperture_size; } ;
struct TYPE_4__ {int agp_mtrr; TYPE_1__ agp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_REQUIRE_AGP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MTRR_WC ; 
 int EINVAL ; 
 TYPE_2__* FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev)
{
	if (FUNC3(dev)) {
		if (FUNC6(dev))
			dev->agp = FUNC1(dev);
		if (FUNC2(dev, DRIVER_REQUIRE_AGP)
		    && (dev->agp == NULL)) {
			FUNC0("Cannot initialize the agpgart module.\n");
			return -EINVAL;
		}
		if (FUNC4(dev)) {
			if (dev->agp && dev->agp->agp_info.ai_aperture_base != 0) {
				if (FUNC5(dev->agp->agp_info.ai_aperture_base,
				    dev->agp->agp_info.ai_aperture_size, DRM_MTRR_WC) == 0)
					dev->agp->agp_mtrr = 1;
				else
					dev->agp->agp_mtrr = -1;
			}
		}
	}
	return 0;
}