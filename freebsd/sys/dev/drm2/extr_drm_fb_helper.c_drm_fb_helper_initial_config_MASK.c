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
struct drm_fb_helper {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (struct drm_fb_helper*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_fb_helper*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_fb_helper*) ; 

bool FUNC6(struct drm_fb_helper *fb_helper, int bpp_sel)
{
	struct drm_device *dev = fb_helper->dev;
	int count = 0;

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC4(fb_helper->dev);

	FUNC1(fb_helper);

	count = FUNC2(fb_helper,
						    dev->mode_config.max_width,
						    dev->mode_config.max_height);
	/*
	 * we shouldn't end up with no modes here.
	 */
	if (count == 0)
		FUNC0(fb_helper->dev->dev, "No connectors reported connected with modes\n");

	FUNC5(fb_helper);

	return FUNC3(fb_helper, bpp_sel);
}