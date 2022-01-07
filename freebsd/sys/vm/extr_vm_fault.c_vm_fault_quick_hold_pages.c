
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {int pmap; } ;
struct TYPE_14__ {scalar_t__ dirty; } ;
struct TYPE_13__ {int td_pflags; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE ;
 int PQ_INACTIVE ;
 int TDP_NOFAULTING ;
 scalar_t__ TRUE ;
 int VM_FAULT_NORMAL ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VM_PROT_QUICK_NOFAULT ;
 int VM_PROT_WRITE ;
 int atop (scalar_t__) ;
 TYPE_12__* curthread ;
 int panic (char*) ;
 TYPE_1__* pmap_extract_and_hold (int ,scalar_t__,int) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;
 scalar_t__ vm_fault (TYPE_2__*,scalar_t__,int,int ,TYPE_1__**) ;
 scalar_t__ vm_map_max (TYPE_2__*) ;
 scalar_t__ vm_map_min (TYPE_2__*) ;
 int vm_page_dirty (TYPE_1__*) ;
 int vm_page_unwire (TYPE_1__*,int ) ;

int
vm_fault_quick_hold_pages(vm_map_t map, vm_offset_t addr, vm_size_t len,
    vm_prot_t prot, vm_page_t *ma, int max_count)
{
 vm_offset_t end, va;
 vm_page_t *mp;
 int count;
 boolean_t pmap_failed;

 if (len == 0)
  return (0);
 end = round_page(addr + len);
 addr = trunc_page(addr);




 if (addr < vm_map_min(map) || addr > end || end > vm_map_max(map))
  return (-1);

 if (atop(end - addr) > max_count)
  panic("vm_fault_quick_hold_pages: count > max_count");
 count = atop(end - addr);





 pmap_failed = FALSE;
 for (mp = ma, va = addr; va < end; mp++, va += PAGE_SIZE) {
  *mp = pmap_extract_and_hold(map->pmap, va, prot);
  if (*mp == ((void*)0))
   pmap_failed = TRUE;
  else if ((prot & VM_PROT_WRITE) != 0 &&
      (*mp)->dirty != VM_PAGE_BITS_ALL) {
   vm_page_dirty(*mp);
  }
 }
 if (pmap_failed) {
  if ((prot & VM_PROT_QUICK_NOFAULT) != 0 &&
      (curthread->td_pflags & TDP_NOFAULTING) != 0)
   goto error;
  for (mp = ma, va = addr; va < end; mp++, va += PAGE_SIZE)
   if (*mp == ((void*)0) && vm_fault(map, va, prot,
       VM_FAULT_NORMAL, mp) != KERN_SUCCESS)
    goto error;
 }
 return (count);
error:
 for (mp = ma; mp < ma + count; mp++)
  if (*mp != ((void*)0))
   vm_page_unwire(*mp, PQ_INACTIVE);
 return (-1);
}
