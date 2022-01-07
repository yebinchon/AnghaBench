
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct drm_gem_object {int refcount; size_t size; scalar_t__ handle_count; int vm_obj; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int td_ucred; } ;


 int KASSERT (int,char*) ;
 int OBJT_DEFAULT ;
 int PAGE_SIZE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 TYPE_1__* curthread ;
 int vm_pager_allocate (int ,int *,size_t,int,int ,int ) ;

int drm_gem_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size)
{
 KASSERT((size & (PAGE_SIZE - 1)) == 0,
     ("Bad size %ju", (uintmax_t)size));

 obj->dev = dev;
 obj->vm_obj = vm_pager_allocate(OBJT_DEFAULT, ((void*)0), size,
     VM_PROT_READ | VM_PROT_WRITE, 0, curthread->td_ucred);

 obj->refcount = 1;
 obj->handle_count = 0;
 obj->size = size;

 return 0;
}
