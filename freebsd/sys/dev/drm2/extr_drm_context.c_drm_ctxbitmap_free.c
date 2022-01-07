
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ** context_sareas; int * ctx_bitmap; } ;


 int DRM_ERROR (char*,int) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_MAX_CTXBITMAP ;
 int DRM_UNLOCK (struct drm_device*) ;
 int clear_bit (int,int *) ;

void drm_ctxbitmap_free(struct drm_device * dev, int ctx_handle)
{
 if (ctx_handle < 0 || ctx_handle >= DRM_MAX_CTXBITMAP ||
     dev->ctx_bitmap == ((void*)0)) {
  DRM_ERROR("Attempt to free invalid context handle: %d\n",
     ctx_handle);
  return;
 }

 DRM_LOCK(dev);
 clear_bit(ctx_handle, dev->ctx_bitmap);
 dev->context_sareas[ctx_handle] = ((void*)0);
 DRM_UNLOCK(dev);
}
