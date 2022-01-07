
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_item {scalar_t__ refcount; int mutex; int * object; } ;


 int DRM_GLOBAL_NUM ;
 int MPASS (int) ;
 struct drm_global_item* glob ;
 int sx_destroy (int *) ;

void drm_global_release(void)
{
 int i;
 for (i = 0; i < DRM_GLOBAL_NUM; ++i) {
  struct drm_global_item *item = &glob[i];
  MPASS(item->object == ((void*)0));
  MPASS(item->refcount == 0);
  sx_destroy(&item->mutex);
 }
}
