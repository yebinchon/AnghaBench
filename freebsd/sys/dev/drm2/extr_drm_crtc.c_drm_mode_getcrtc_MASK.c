#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc {int mode_valid; int /*<<< orphan*/  mode; scalar_t__ fb_id; int /*<<< orphan*/  gamma_size; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  crtc_id; } ;
struct drm_file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct drm_crtc {int /*<<< orphan*/  mode; scalar_t__ enabled; TYPE_2__* fb; int /*<<< orphan*/  gamma_size; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_mode_object* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC3 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_device *dev,
		     void *data, struct drm_file *file_priv)
{
	struct drm_mode_crtc *crtc_resp = data;
	struct drm_crtc *crtc;
	struct drm_mode_object *obj;
	int ret = 0;

	if (!FUNC0(dev, DRIVER_MODESET))
		return -EINVAL;

	FUNC4(&dev->mode_config.mutex);

	obj = FUNC2(dev, crtc_resp->crtc_id,
				   DRM_MODE_OBJECT_CRTC);
	if (!obj) {
		ret = -EINVAL;
		goto out;
	}
	crtc = FUNC3(obj);

	crtc_resp->x = crtc->x;
	crtc_resp->y = crtc->y;
	crtc_resp->gamma_size = crtc->gamma_size;
	if (crtc->fb)
		crtc_resp->fb_id = crtc->fb->base.id;
	else
		crtc_resp->fb_id = 0;

	if (crtc->enabled) {

		FUNC1(&crtc_resp->mode, &crtc->mode);
		crtc_resp->mode_valid = 1;

	} else {
		crtc_resp->mode_valid = 0;
	}

out:
	FUNC5(&dev->mode_config.mutex);
	return ret;
}