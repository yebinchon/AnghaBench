
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_3__* vm_object_t ;
typedef TYPE_4__* vm_map_t ;
typedef TYPE_5__* vm_map_entry_t ;
struct TYPE_10__ {TYPE_3__* vm_object; } ;
struct TYPE_14__ {scalar_t__ start; scalar_t__ end; int offset; TYPE_1__ object; } ;
struct TYPE_13__ {int pmap; } ;
struct TYPE_12__ {int backing_object_offset; struct TYPE_12__* backing_object; } ;
struct TYPE_11__ {scalar_t__ pindex; scalar_t__ psind; } ;


 scalar_t__ IDX_TO_OFF (scalar_t__) ;
 int MINCORE_SUPER ;
 scalar_t__ OFF_TO_IDX (int ) ;
 scalar_t__ atop (scalar_t__) ;
 scalar_t__* pagesizes ;
 int pmap_mincore (int ,scalar_t__,scalar_t__*) ;
 TYPE_2__* vm_page_find_least (TYPE_3__*,scalar_t__) ;
 scalar_t__ vmmap_skip_res_cnt ;

void
kern_proc_vmmap_resident(vm_map_t map, vm_map_entry_t entry,
    int *resident_count, bool *super)
{
 vm_object_t obj, tobj;
 vm_page_t m, m_adv;
 vm_offset_t addr;
 vm_paddr_t pa;
 vm_pindex_t pi, pi_adv, pindex;

 *super = 0;
 *resident_count = 0;
 if (vmmap_skip_res_cnt)
  return;

 pa = 0;
 obj = entry->object.vm_object;
 addr = entry->start;
 m_adv = ((void*)0);
 pi = OFF_TO_IDX(entry->offset);
 for (; addr < entry->end; addr += IDX_TO_OFF(pi_adv), pi += pi_adv) {
  if (m_adv != ((void*)0)) {
   m = m_adv;
  } else {
   pi_adv = atop(entry->end - addr);
   pindex = pi;
   for (tobj = obj;; tobj = tobj->backing_object) {
    m = vm_page_find_least(tobj, pindex);
    if (m != ((void*)0)) {
     if (m->pindex == pindex)
      break;
     if (pi_adv > m->pindex - pindex) {
      pi_adv = m->pindex - pindex;
      m_adv = m;
     }
    }
    if (tobj->backing_object == ((void*)0))
     goto next;
    pindex += OFF_TO_IDX(tobj->
        backing_object_offset);
   }
  }
  m_adv = ((void*)0);
  if (m->psind != 0 && addr + pagesizes[1] <= entry->end &&
      (addr & (pagesizes[1] - 1)) == 0 &&
      (pmap_mincore(map->pmap, addr, &pa) & MINCORE_SUPER) != 0) {
   *super = 1;
   pi_adv = atop(pagesizes[1]);
  } else {







   pi_adv = 1;
  }
  *resident_count += pi_adv;
next:;
 }
}
