
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_buffer {int size; struct drm_buffer** data; } ;


 int DRM_MEM_DRIVER ;
 int PAGE_SIZE ;
 int free (struct drm_buffer*,int ) ;

void drm_buffer_free(struct drm_buffer *buf)
{

 if (buf != ((void*)0)) {

  int nr_pages = buf->size / PAGE_SIZE + 1;
  int idx;
  for (idx = 0; idx < nr_pages; ++idx)
   free(buf->data[idx], DRM_MEM_DRIVER);

  free(buf, DRM_MEM_DRIVER);
 }
}
