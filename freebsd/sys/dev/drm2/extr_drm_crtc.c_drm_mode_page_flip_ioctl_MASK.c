#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void (* destroy ) (struct drm_pending_event*) ;struct drm_file* file_priv; TYPE_2__* event; } ;
struct TYPE_8__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {TYPE_2__ base; int /*<<< orphan*/  user_data; } ;
struct drm_pending_vblank_event {TYPE_4__ base; TYPE_3__ event; } ;
struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc_page_flip {int flags; scalar_t__ reserved; int /*<<< orphan*/  user_data; int /*<<< orphan*/  fb_id; int /*<<< orphan*/  crtc_id; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_file {int event_space; } ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_6__ mode_config; int /*<<< orphan*/  event_lock; } ;
struct TYPE_7__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {int x; int y; TYPE_5__* funcs; scalar_t__ invert_dimensions; TYPE_1__ mode; int /*<<< orphan*/ * fb; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* page_flip ) (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int,char*) ; 
 int /*<<< orphan*/  DRM_EVENT_FLIP_COMPLETE ; 
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_FB ; 
 int DRM_MODE_PAGE_FLIP_EVENT ; 
 int DRM_MODE_PAGE_FLIP_FLAGS ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct drm_mode_object* FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_pending_vblank_event*,int /*<<< orphan*/ ) ; 
 scalar_t__ free_vblank_event ; 
 struct drm_pending_vblank_event* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_crtc* FUNC6 (struct drm_mode_object*) ; 
 struct drm_framebuffer* FUNC7 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct drm_device *dev,
			     void *data, struct drm_file *file_priv)
{
	struct drm_mode_crtc_page_flip *page_flip = data;
	struct drm_mode_object *obj;
	struct drm_crtc *crtc;
	struct drm_framebuffer *fb;
	struct drm_pending_vblank_event *e = NULL;
#ifdef __linux__
	unsigned long flags;
#endif
	int hdisplay, vdisplay;
	int ret = -EINVAL;

	if (page_flip->flags & ~DRM_MODE_PAGE_FLIP_FLAGS ||
	    page_flip->reserved != 0)
		return -EINVAL;

	FUNC9(&dev->mode_config.mutex);
	obj = FUNC1(dev, page_flip->crtc_id, DRM_MODE_OBJECT_CRTC);
	if (!obj)
		goto out;
	crtc = FUNC6(obj);

	if (crtc->fb == NULL) {
		/* The framebuffer is currently unbound, presumably
		 * due to a hotplug event, that userspace has not
		 * yet discovered.
		 */
		ret = -EBUSY;
		goto out;
	}

	if (crtc->funcs->page_flip == NULL)
		goto out;

	obj = FUNC1(dev, page_flip->fb_id, DRM_MODE_OBJECT_FB);
	if (!obj)
		goto out;
	fb = FUNC7(obj);

	hdisplay = crtc->mode.hdisplay;
	vdisplay = crtc->mode.vdisplay;

	if (crtc->invert_dimensions) {
		int tmp;
		tmp = vdisplay;
		vdisplay = hdisplay;
		hdisplay = tmp;
	}

	if (hdisplay > fb->width ||
	    vdisplay > fb->height ||
	    crtc->x > fb->width - hdisplay ||
	    crtc->y > fb->height - vdisplay) {
		FUNC0("Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\n",
			      fb->width, fb->height, hdisplay, vdisplay, crtc->x, crtc->y,
			      crtc->invert_dimensions ? " (inverted)" : "");
		ret = -ENOSPC;
		goto out;
	}

	if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
		ret = -ENOMEM;
		FUNC4(&dev->event_lock);
		if (file_priv->event_space < sizeof e->event) {
			FUNC5(&dev->event_lock);
			goto out;
		}
		file_priv->event_space -= sizeof e->event;
		FUNC5(&dev->event_lock);

		e = FUNC3(sizeof *e, DRM_MEM_KMS, M_WAITOK | M_ZERO);
		if (e == NULL) {
			FUNC4(&dev->event_lock);
			file_priv->event_space += sizeof e->event;
			FUNC5(&dev->event_lock);
			goto out;
		}

		e->event.base.type = DRM_EVENT_FLIP_COMPLETE;
		e->event.base.length = sizeof e->event;
		e->event.user_data = page_flip->user_data;
		e->base.event = &e->event.base;
		e->base.file_priv = file_priv;
		e->base.destroy =
			(void (*) (struct drm_pending_event *)) free_vblank_event;
	}

	ret = crtc->funcs->page_flip(crtc, fb, e);
	if (ret) {
		if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
			FUNC4(&dev->event_lock);
			file_priv->event_space += sizeof e->event;
			FUNC5(&dev->event_lock);
			FUNC2(e, DRM_MEM_KMS);
		}
	}

out:
	FUNC10(&dev->mode_config.mutex);
	return ret;
}