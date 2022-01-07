
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * ctx_bitmap; int * context_sareas; } ;


 int DRM_LOCK (struct drm_device*) ;
 int DRM_MEM_CTXBITMAP ;
 int DRM_MEM_SAREA ;
 int DRM_UNLOCK (struct drm_device*) ;
 int free (int *,int ) ;

void drm_ctxbitmap_cleanup(struct drm_device * dev)
{
 DRM_LOCK(dev);
 if (dev->context_sareas != ((void*)0))
  free(dev->context_sareas, DRM_MEM_SAREA);
 free(dev->ctx_bitmap, DRM_MEM_CTXBITMAP);
 DRM_UNLOCK(dev);
}
