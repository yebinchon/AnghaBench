
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int * vm_object_t ;
struct ucred {int dummy; } ;
struct pagerops {int * (* pgo_alloc ) (void*,int ,int ,int ,struct ucred*) ;} ;
typedef size_t objtype_t ;


 struct pagerops** pagertab ;
 int * stub1 (void*,int ,int ,int ,struct ucred*) ;

vm_object_t
vm_pager_allocate(objtype_t type, void *handle, vm_ooffset_t size,
    vm_prot_t prot, vm_ooffset_t off, struct ucred *cred)
{
 vm_object_t ret;
 struct pagerops *ops;

 ops = pagertab[type];
 if (ops)
  ret = (*ops->pgo_alloc)(handle, size, prot, off, cred);
 else
  ret = ((void*)0);
 return (ret);
}
