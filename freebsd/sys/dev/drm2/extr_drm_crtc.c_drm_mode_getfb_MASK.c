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
struct drm_mode_object {int dummy; } ;
struct drm_mode_fb_cmd {scalar_t__ handle; int /*<<< orphan*/  pitch; int /*<<< orphan*/  bpp; int /*<<< orphan*/  depth; int /*<<< orphan*/  width; int /*<<< orphan*/  height; int /*<<< orphan*/  fb_id; } ;
struct drm_framebuffer {TYPE_1__* funcs; int /*<<< orphan*/ * pitches; int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  depth; int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* create_handle ) (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_FB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_mode_object* FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_framebuffer* FUNC2 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_device *dev,
		   void *data, struct drm_file *file_priv)
{
	struct drm_mode_fb_cmd *r = data;
	struct drm_mode_object *obj;
	struct drm_framebuffer *fb;
	int ret = 0;

	if (!FUNC0(dev, DRIVER_MODESET))
		return -EINVAL;

	FUNC4(&dev->mode_config.mutex);
	obj = FUNC1(dev, r->fb_id, DRM_MODE_OBJECT_FB);
	if (!obj) {
		ret = -EINVAL;
		goto out;
	}
	fb = FUNC2(obj);

	r->height = fb->height;
	r->width = fb->width;
	r->depth = fb->depth;
	r->bpp = fb->bits_per_pixel;
	r->pitch = fb->pitches[0];
	r->handle = 0;
	fb->funcs->create_handle(fb, file_priv, &r->handle);

out:
	FUNC5(&dev->mode_config.mutex);
	return ret;
}