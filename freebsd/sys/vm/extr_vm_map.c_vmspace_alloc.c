
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int * pmap; } ;
struct vmspace {int vm_refcnt; scalar_t__ vm_maxsaddr; scalar_t__ vm_daddr; scalar_t__ vm_taddr; scalar_t__ vm_ssize; scalar_t__ vm_dsize; scalar_t__ vm_tsize; scalar_t__ vm_swrss; int * vm_shm; TYPE_1__ vm_map; } ;
typedef int (* pmap_pinit_t ) (int ) ;


 int CTR1 (int ,char*,struct vmspace*) ;
 int KASSERT (int ,char*) ;
 int KTR_VM ;
 int M_WAITOK ;
 int _vm_map_init (TYPE_1__*,int ,int ,int ) ;
 struct vmspace* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct vmspace*) ;
 int vmspace_pmap (struct vmspace*) ;
 int vmspace_zone ;

struct vmspace *
vmspace_alloc(vm_offset_t min, vm_offset_t max, pmap_pinit_t pinit)
{
 struct vmspace *vm;

 vm = uma_zalloc(vmspace_zone, M_WAITOK);
 KASSERT(vm->vm_map.pmap == ((void*)0), ("vm_map.pmap must be NULL"));
 if (!pinit(vmspace_pmap(vm))) {
  uma_zfree(vmspace_zone, vm);
  return (((void*)0));
 }
 CTR1(KTR_VM, "vmspace_alloc: %p", vm);
 _vm_map_init(&vm->vm_map, vmspace_pmap(vm), min, max);
 vm->vm_refcnt = 1;
 vm->vm_shm = ((void*)0);
 vm->vm_swrss = 0;
 vm->vm_tsize = 0;
 vm->vm_dsize = 0;
 vm->vm_ssize = 0;
 vm->vm_taddr = 0;
 vm->vm_daddr = 0;
 vm->vm_maxsaddr = 0;
 return (vm);
}
