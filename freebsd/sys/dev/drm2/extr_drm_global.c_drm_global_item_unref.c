
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_reference {size_t global_type; int (* release ) (struct drm_global_reference*) ;int * object; } ;
struct drm_global_item {scalar_t__ refcount; int mutex; int * object; } ;


 int MPASS (int) ;
 int M_DRM_GLOBAL ;
 int free (int *,int ) ;
 struct drm_global_item* glob ;
 int stub1 (struct drm_global_reference*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void drm_global_item_unref(struct drm_global_reference *ref)
{
 struct drm_global_item *item = &glob[ref->global_type];

 sx_xlock(&item->mutex);
 MPASS(item->refcount != 0);
 MPASS(ref->object == item->object);
 if (--item->refcount == 0) {
  ref->release(ref);
  free(item->object, M_DRM_GLOBAL);
  item->object = ((void*)0);
 }
 sx_xunlock(&item->mutex);
}
