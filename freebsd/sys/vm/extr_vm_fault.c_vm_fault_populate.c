
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;
typedef struct TYPE_23__ TYPE_16__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
struct mtx {int dummy; } ;
struct faultstate {int lookup_still_valid; scalar_t__ first_pindex; scalar_t__ map_generation; TYPE_4__* first_object; TYPE_2__* map; TYPE_16__* entry; TYPE_4__* object; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_28__ {scalar_t__ size; int * backing_object; int paging_in_progress; } ;
struct TYPE_27__ {int psind; scalar_t__ pindex; } ;
struct TYPE_26__ {scalar_t__ timestamp; int pmap; } ;
struct TYPE_25__ {int ru_majflt; } ;
struct TYPE_24__ {TYPE_1__ td_ru; } ;
struct TYPE_23__ {int offset; int end; int start; int max_protection; } ;


 int IDX_TO_OFF (scalar_t__) ;
 int KERN_FAILURE ;
 int KERN_NOT_RECEIVER ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int MPASS (int) ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PMAP_ENTER_WIRED ;
 scalar_t__ REFCOUNT_COUNT (int ) ;
 int VM_FAULT_WIRE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_4__*) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 int VM_PAGER_BAD ;
 int VM_PAGER_OK ;
 int atop (int) ;
 TYPE_19__* curthread ;
 int mtx_unlock (struct mtx*) ;
 int* pagesizes ;
 int pmap_enter (int ,int,TYPE_3__*,int ,int,int) ;
 int pmap_ps_enabled (int ) ;
 int ptoa (int) ;
 int unlock_map (struct faultstate*) ;
 int unlock_vp (struct faultstate*) ;
 int vm_fault_dirty (TYPE_16__*,TYPE_3__*,int ,int,int,int) ;
 int vm_fault_populate_check_page (TYPE_3__*) ;
 int vm_fault_populate_cleanup (TYPE_4__*,scalar_t__,scalar_t__) ;
 int vm_fault_restore_map_lock (struct faultstate*) ;
 int vm_page_activate (TYPE_3__*) ;
 int vm_page_change_lock (TYPE_3__*,struct mtx**) ;
 TYPE_3__* vm_page_lookup (TYPE_4__*,scalar_t__) ;
 TYPE_3__* vm_page_next (TYPE_3__*) ;
 int vm_page_wire (TYPE_3__*) ;
 int vm_page_xunbusy (TYPE_3__*) ;
 int vm_pager_populate (TYPE_4__*,scalar_t__,int,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
vm_fault_populate(struct faultstate *fs, vm_prot_t prot, int fault_type,
    int fault_flags, boolean_t wired, vm_page_t *m_hold)
{
 struct mtx *m_mtx;
 vm_offset_t vaddr;
 vm_page_t m;
 vm_pindex_t map_first, map_last, pager_first, pager_last, pidx;
 int i, npages, psind, rv;

 MPASS(fs->object == fs->first_object);
 VM_OBJECT_ASSERT_WLOCKED(fs->first_object);
 MPASS(REFCOUNT_COUNT(fs->first_object->paging_in_progress) > 0);
 MPASS(fs->first_object->backing_object == ((void*)0));
 MPASS(fs->lookup_still_valid);

 pager_first = OFF_TO_IDX(fs->entry->offset);
 pager_last = pager_first + atop(fs->entry->end - fs->entry->start) - 1;
 unlock_map(fs);
 unlock_vp(fs);
 rv = vm_pager_populate(fs->first_object, fs->first_pindex,
     fault_type, fs->entry->max_protection, &pager_first, &pager_last);

 VM_OBJECT_ASSERT_WLOCKED(fs->first_object);
 if (rv == VM_PAGER_BAD) {




  vm_fault_restore_map_lock(fs);
  if (fs->map->timestamp != fs->map_generation)
   return (KERN_RESOURCE_SHORTAGE);
  return (KERN_NOT_RECEIVER);
 }
 if (rv != VM_PAGER_OK)
  return (KERN_FAILURE);


 MPASS(pager_first <= pager_last);
 MPASS(fs->first_pindex <= pager_last);
 MPASS(fs->first_pindex >= pager_first);
 MPASS(pager_last < fs->first_object->size);

 vm_fault_restore_map_lock(fs);
 if (fs->map->timestamp != fs->map_generation) {
  vm_fault_populate_cleanup(fs->first_object, pager_first,
      pager_last);
  return (KERN_RESOURCE_SHORTAGE);
 }
 map_first = OFF_TO_IDX(fs->entry->offset);
 if (map_first > pager_first) {
  vm_fault_populate_cleanup(fs->first_object, pager_first,
      map_first - 1);
  pager_first = map_first;
 }
 map_last = map_first + atop(fs->entry->end - fs->entry->start) - 1;
 if (map_last < pager_last) {
  vm_fault_populate_cleanup(fs->first_object, map_last + 1,
      pager_last);
  pager_last = map_last;
 }
 for (pidx = pager_first, m = vm_page_lookup(fs->first_object, pidx);
     pidx <= pager_last;
     pidx += npages, m = vm_page_next(&m[npages - 1])) {
  vaddr = fs->entry->start + IDX_TO_OFF(pidx) - fs->entry->offset;


  psind = m->psind;
  if (psind > 0 && ((vaddr & (pagesizes[psind] - 1)) != 0 ||
      pidx + OFF_TO_IDX(pagesizes[psind]) - 1 > pager_last ||
      !pmap_ps_enabled(fs->map->pmap) || wired))
   psind = 0;



  npages = atop(pagesizes[psind]);
  for (i = 0; i < npages; i++) {
   vm_fault_populate_check_page(&m[i]);
   vm_fault_dirty(fs->entry, &m[i], prot, fault_type,
       fault_flags, 1);
  }
  VM_OBJECT_WUNLOCK(fs->first_object);
  rv = pmap_enter(fs->map->pmap, vaddr, m, prot, fault_type |
      (wired ? PMAP_ENTER_WIRED : 0), psind);

  if (psind > 0 && rv == KERN_FAILURE) {
   for (i = 0; i < npages; i++) {
    rv = pmap_enter(fs->map->pmap, vaddr + ptoa(i),
        &m[i], prot, fault_type |
        (wired ? PMAP_ENTER_WIRED : 0), 0);
    MPASS(rv == KERN_SUCCESS);
   }
  }



  VM_OBJECT_WLOCK(fs->first_object);
  m_mtx = ((void*)0);
  for (i = 0; i < npages; i++) {
   if ((fault_flags & VM_FAULT_WIRE) != 0) {
    vm_page_wire(&m[i]);
   } else {
    vm_page_change_lock(&m[i], &m_mtx);
    vm_page_activate(&m[i]);
   }
   if (m_hold != ((void*)0) && m[i].pindex == fs->first_pindex) {
    *m_hold = &m[i];
    vm_page_wire(&m[i]);
   }
   vm_page_xunbusy(&m[i]);
  }
  if (m_mtx != ((void*)0))
   mtx_unlock(m_mtx);
 }
 curthread->td_ru.ru_majflt++;
 return (KERN_SUCCESS);
}
