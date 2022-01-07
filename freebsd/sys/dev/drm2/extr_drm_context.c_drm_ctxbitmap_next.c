
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_local_map {int dummy; } ;
struct drm_device {int max_context; struct drm_local_map** context_sareas; int * ctx_bitmap; } ;


 int DRM_DEBUG (char*,int) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_MAX_CTXBITMAP ;
 int DRM_MEM_SAREA ;
 int DRM_UNLOCK (struct drm_device*) ;
 int M_NOWAIT ;
 int clear_bit (int,int *) ;
 int find_first_zero_bit (int *,int) ;
 struct drm_local_map** realloc (struct drm_local_map**,int,int ,int ) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int drm_ctxbitmap_next(struct drm_device * dev)
{
 int bit;

 if (dev->ctx_bitmap == ((void*)0))
  return -1;

 DRM_LOCK(dev);
 bit = find_first_zero_bit(dev->ctx_bitmap, DRM_MAX_CTXBITMAP);
 if (bit >= DRM_MAX_CTXBITMAP) {
  DRM_UNLOCK(dev);
  return -1;
 }

 set_bit(bit, dev->ctx_bitmap);
 DRM_DEBUG("bit : %d\n", bit);
 if ((bit+1) > dev->max_context) {
  struct drm_local_map **ctx_sareas;
  int max_ctx = (bit+1);

  ctx_sareas = realloc(dev->context_sareas,
      max_ctx * sizeof(*dev->context_sareas),
      DRM_MEM_SAREA, M_NOWAIT);
  if (ctx_sareas == ((void*)0)) {
   clear_bit(bit, dev->ctx_bitmap);
   DRM_DEBUG("failed to allocate bit : %d\n", bit);
   DRM_UNLOCK(dev);
   return -1;
  }
  dev->max_context = max_ctx;
  dev->context_sareas = ctx_sareas;
  dev->context_sareas[bit] = ((void*)0);
 }
 DRM_UNLOCK(dev);
 return bit;
}
