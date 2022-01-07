
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int vm_object_t ;
struct ucred {int dummy; } ;


 int OBJT_DEVICE ;
 int cdev_pager_allocate (void*,int ,int *,int ,int ,int ,struct ucred*) ;
 int old_dev_pager_ops ;

__attribute__((used)) static vm_object_t
dev_pager_alloc(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred)
{

 return (cdev_pager_allocate(handle, OBJT_DEVICE, &old_dev_pager_ops,
     size, prot, foff, cred));
}
