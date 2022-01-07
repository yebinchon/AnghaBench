
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t vm_size_t ;
typedef size_t vm_offset_t ;
typedef int * vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct thread {TYPE_2__* td_proc; } ;
struct pmckern_map_out {uintptr_t pm_address; size_t pm_size; } ;
struct TYPE_9__ {size_t start; int end; } ;
struct TYPE_8__ {TYPE_1__* p_vmspace; } ;
struct TYPE_7__ {int vm_map; } ;


 int EINVAL ;
 size_t PAGE_MASK ;
 int PMC_CALL_HOOK (struct thread*,int ,void*) ;
 int PMC_FN_MUNMAP ;
 scalar_t__ PMC_HOOK_INSTALLED (int ) ;
 scalar_t__ TRUE ;
 int VM_PROT_EXECUTE ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ round_page (size_t) ;
 scalar_t__ vm_map_check_protection (int *,size_t,int ,int ) ;
 int vm_map_delete (int *,size_t,size_t) ;
 TYPE_3__* vm_map_entry_succ (TYPE_3__*) ;
 int vm_map_lock (int *) ;
 int vm_map_lock_downgrade (int *) ;
 scalar_t__ vm_map_lookup_entry (int *,size_t,TYPE_3__**) ;
 size_t vm_map_max (int *) ;
 size_t vm_map_min (int *) ;
 int vm_map_unlock (int *) ;
 int vm_map_unlock_read (int *) ;

int
kern_munmap(struct thread *td, uintptr_t addr0, size_t size)
{





 vm_offset_t addr;
 vm_size_t pageoff;
 vm_map_t map;

 if (size == 0)
  return (EINVAL);

 addr = addr0;
 pageoff = (addr & PAGE_MASK);
 addr -= pageoff;
 size += pageoff;
 size = (vm_size_t) round_page(size);
 if (addr + size < addr)
  return (EINVAL);




 map = &td->td_proc->p_vmspace->vm_map;
 if (addr < vm_map_min(map) || addr + size > vm_map_max(map))
  return (EINVAL);
 vm_map_lock(map);
 vm_map_delete(map, addr, addr + size);
  vm_map_unlock(map);


 return (0);
}
