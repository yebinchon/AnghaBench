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
struct TYPE_2__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc {int /*<<< orphan*/  head; int /*<<< orphan*/  base; int /*<<< orphan*/ * gamma_store; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;

	FUNC1(crtc->gamma_store, DRM_MEM_KMS);
	crtc->gamma_store = NULL;

	FUNC0(dev, &crtc->base);
	FUNC2(&crtc->head);
	dev->mode_config.num_crtc--;
}