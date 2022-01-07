
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device_dma {int buf_count; TYPE_1__** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct TYPE_2__ {int list; struct drm_file* file_priv; } ;



 int DRM_LIST_RECLAIM ;

 int drm_free_buffer (struct drm_device*,TYPE_1__*) ;

void drm_core_reclaim_buffers(struct drm_device *dev,
         struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 int i;

 if (!dma)
  return;
 for (i = 0; i < dma->buf_count; i++) {
  if (dma->buflist[i]->file_priv == file_priv) {
   switch (dma->buflist[i]->list) {
   case 129:
    drm_free_buffer(dev, dma->buflist[i]);
    break;
   case 128:
    dma->buflist[i]->list = DRM_LIST_RECLAIM;
    break;
   default:

    break;
   }
  }
 }
}
