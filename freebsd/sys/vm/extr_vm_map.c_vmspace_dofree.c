
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pmap; } ;
struct vmspace {TYPE_1__ vm_map; } ;


 int CTR1 (int ,char*,struct vmspace*) ;
 int KTR_VM ;
 int pmap_release (int ) ;
 int shmexit (struct vmspace*) ;
 int uma_zfree (int ,struct vmspace*) ;
 int vm_map_max (TYPE_1__*) ;
 int vm_map_min (TYPE_1__*) ;
 int vm_map_remove (TYPE_1__*,int ,int ) ;
 int vmspace_pmap (struct vmspace*) ;
 int vmspace_zone ;

__attribute__((used)) static inline void
vmspace_dofree(struct vmspace *vm)
{

 CTR1(KTR_VM, "vmspace_free: %p", vm);





 shmexit(vm);






 (void)vm_map_remove(&vm->vm_map, vm_map_min(&vm->vm_map),
     vm_map_max(&vm->vm_map));

 pmap_release(vmspace_pmap(vm));
 vm->vm_map.pmap = ((void*)0);
 uma_zfree(vmspace_zone, vm);
}
