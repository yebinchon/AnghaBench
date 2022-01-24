#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,struct drm_display_mode const*) ; 
 struct drm_display_mode* FUNC1 (struct drm_device*) ; 

struct drm_display_mode *FUNC2(struct drm_device *dev,
					    const struct drm_display_mode *mode)
{
	struct drm_display_mode *nmode;

	nmode = FUNC1(dev);
	if (!nmode)
		return NULL;

	FUNC0(nmode, mode);

	return nmode;
}