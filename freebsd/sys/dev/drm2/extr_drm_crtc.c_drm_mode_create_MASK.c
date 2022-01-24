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
struct drm_display_mode {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_MODE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

struct drm_display_mode *FUNC3(struct drm_device *dev)
{
	struct drm_display_mode *nmode;

	nmode = FUNC2(sizeof(struct drm_display_mode), DRM_MEM_KMS,
	    M_WAITOK | M_ZERO);
	if (!nmode)
		return NULL;

	if (FUNC0(dev, &nmode->base, DRM_MODE_OBJECT_MODE)) {
		FUNC1(nmode, DRM_MEM_KMS);
		return NULL;
	}

	return nmode;
}