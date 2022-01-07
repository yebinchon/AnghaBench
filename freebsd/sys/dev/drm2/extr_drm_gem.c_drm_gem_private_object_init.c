
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int refcount; size_t size; int handle_count; int * vm_obj; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int MPASS (int) ;
 int PAGE_SIZE ;
 int atomic_store_rel_int (int *,int ) ;

int drm_gem_private_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size)
{
 MPASS((size & (PAGE_SIZE - 1)) == 0);

 obj->dev = dev;
 obj->vm_obj = ((void*)0);

 obj->refcount = 1;
 atomic_store_rel_int(&obj->handle_count, 0);
 obj->size = size;

 return 0;
}
