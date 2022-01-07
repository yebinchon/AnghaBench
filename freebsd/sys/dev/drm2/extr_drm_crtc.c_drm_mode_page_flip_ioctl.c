
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {void (* destroy ) (struct drm_pending_event*) ;struct drm_file* file_priv; TYPE_2__* event; } ;
struct TYPE_8__ {int length; int type; } ;
struct TYPE_9__ {TYPE_2__ base; int user_data; } ;
struct drm_pending_vblank_event {TYPE_4__ base; TYPE_3__ event; } ;
struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc_page_flip {int flags; scalar_t__ reserved; int user_data; int fb_id; int crtc_id; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_file {int event_space; } ;
struct TYPE_12__ {int mutex; } ;
struct drm_device {TYPE_6__ mode_config; int event_lock; } ;
struct TYPE_7__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {int x; int y; TYPE_5__* funcs; scalar_t__ invert_dimensions; TYPE_1__ mode; int * fb; } ;
struct TYPE_11__ {int (* page_flip ) (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;} ;


 int DRM_DEBUG_KMS (char*,int,int,int,int,int,int,char*) ;
 int DRM_EVENT_FLIP_COMPLETE ;
 int DRM_MEM_KMS ;
 int DRM_MODE_OBJECT_CRTC ;
 int DRM_MODE_OBJECT_FB ;
 int DRM_MODE_PAGE_FLIP_EVENT ;
 int DRM_MODE_PAGE_FLIP_FLAGS ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 int free (struct drm_pending_vblank_event*,int ) ;
 scalar_t__ free_vblank_event ;
 struct drm_pending_vblank_event* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct drm_crtc* obj_to_crtc (struct drm_mode_object*) ;
 struct drm_framebuffer* obj_to_fb (struct drm_mode_object*) ;
 int stub1 (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_mode_page_flip_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv)
{
 struct drm_mode_crtc_page_flip *page_flip = data;
 struct drm_mode_object *obj;
 struct drm_crtc *crtc;
 struct drm_framebuffer *fb;
 struct drm_pending_vblank_event *e = ((void*)0);

 unsigned long flags;

 int hdisplay, vdisplay;
 int ret = -EINVAL;

 if (page_flip->flags & ~DRM_MODE_PAGE_FLIP_FLAGS ||
     page_flip->reserved != 0)
  return -EINVAL;

 sx_xlock(&dev->mode_config.mutex);
 obj = drm_mode_object_find(dev, page_flip->crtc_id, DRM_MODE_OBJECT_CRTC);
 if (!obj)
  goto out;
 crtc = obj_to_crtc(obj);

 if (crtc->fb == ((void*)0)) {




  ret = -EBUSY;
  goto out;
 }

 if (crtc->funcs->page_flip == ((void*)0))
  goto out;

 obj = drm_mode_object_find(dev, page_flip->fb_id, DRM_MODE_OBJECT_FB);
 if (!obj)
  goto out;
 fb = obj_to_fb(obj);

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
  DRM_DEBUG_KMS("Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\n",
         fb->width, fb->height, hdisplay, vdisplay, crtc->x, crtc->y,
         crtc->invert_dimensions ? " (inverted)" : "");
  ret = -ENOSPC;
  goto out;
 }

 if (page_flip->flags & DRM_MODE_PAGE_FLIP_EVENT) {
  ret = -ENOMEM;
  mtx_lock(&dev->event_lock);
  if (file_priv->event_space < sizeof e->event) {
   mtx_unlock(&dev->event_lock);
   goto out;
  }
  file_priv->event_space -= sizeof e->event;
  mtx_unlock(&dev->event_lock);

  e = malloc(sizeof *e, DRM_MEM_KMS, M_WAITOK | M_ZERO);
  if (e == ((void*)0)) {
   mtx_lock(&dev->event_lock);
   file_priv->event_space += sizeof e->event;
   mtx_unlock(&dev->event_lock);
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
   mtx_lock(&dev->event_lock);
   file_priv->event_space += sizeof e->event;
   mtx_unlock(&dev->event_lock);
   free(e, DRM_MEM_KMS);
  }
 }

out:
 sx_xunlock(&dev->mode_config.mutex);
 return ret;
}
