
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_item {scalar_t__ refcount; int * object; int mutex; } ;


 int DRM_GLOBAL_NUM ;
 struct drm_global_item* glob ;
 int sx_init (int *,char*) ;

void drm_global_init(void)
{
 int i;

 for (i = 0; i < DRM_GLOBAL_NUM; ++i) {
  struct drm_global_item *item = &glob[i];
  sx_init(&item->mutex, "drmgi");
  item->object = ((void*)0);
  item->refcount = 0;
 }
}
