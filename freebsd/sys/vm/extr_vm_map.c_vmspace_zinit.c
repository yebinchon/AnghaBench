
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pmap; } ;
struct vmspace {TYPE_1__ vm_map; } ;


 int PMAP_LOCK_INIT (int ) ;
 int vm_map_zinit (TYPE_1__*,int,int) ;
 int vmspace_pmap (struct vmspace*) ;

__attribute__((used)) static int
vmspace_zinit(void *mem, int size, int flags)
{
 struct vmspace *vm;

 vm = (struct vmspace *)mem;

 vm->vm_map.pmap = ((void*)0);
 (void)vm_map_zinit(&vm->vm_map, sizeof(vm->vm_map), flags);
 PMAP_LOCK_INIT(vmspace_pmap(vm));
 return (0);
}
