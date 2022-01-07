
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int max_context; int * context_sareas; int * ctx_bitmap; } ;


 int DRM_DEBUG (char*,int) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_MEM_CTXBITMAP ;
 int DRM_RESERVED_CONTEXTS ;
 int DRM_UNLOCK (struct drm_device*) ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int drm_ctxbitmap_next (struct drm_device*) ;
 int * malloc (int ,int ,int) ;

int drm_ctxbitmap_init(struct drm_device * dev)
{
 int i;
    int temp;

 DRM_LOCK(dev);
 dev->ctx_bitmap = malloc(PAGE_SIZE, DRM_MEM_CTXBITMAP,
     M_NOWAIT | M_ZERO);
 if (dev->ctx_bitmap == ((void*)0)) {
  DRM_UNLOCK(dev);
  return ENOMEM;
 }
 dev->context_sareas = ((void*)0);
 dev->max_context = -1;
 DRM_UNLOCK(dev);

 for (i = 0; i < DRM_RESERVED_CONTEXTS; i++) {
  temp = drm_ctxbitmap_next(dev);
  DRM_DEBUG("drm_ctxbitmap_init : %d\n", temp);
 }

 return 0;
}
