
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_3__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_4__* vm_object_t ;
typedef TYPE_5__* vm_map_t ;
typedef TYPE_6__* vm_map_entry_t ;
struct thread {TYPE_1__* td_proc; } ;
typedef int pmap_t ;
struct TYPE_31__ {unsigned int timestamp; } ;
struct TYPE_33__ {TYPE_5__ vm_map; } ;
struct TYPE_28__ {TYPE_4__* vm_object; } ;
struct TYPE_32__ {scalar_t__ start; scalar_t__ end; int eflags; scalar_t__ offset; TYPE_2__ object; } ;
struct TYPE_30__ {scalar_t__ type; } ;
struct TYPE_29__ {scalar_t__ dirty; int aflags; TYPE_4__* object; } ;
struct TYPE_27__ {TYPE_7__* p_vmspace; } ;


 int EFAULT ;
 int ENOMEM ;
 int KASSERT (int ,char*) ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MINCORE_INCORE ;
 int MINCORE_MODIFIED_OTHER ;
 int MINCORE_REFERENCED_OTHER ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OBJT_VNODE ;
 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int PGA_REFERENCED ;
 TYPE_3__* PHYS_TO_VM_PAGE (scalar_t__) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_4__*) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 scalar_t__ atomic_load_ptr (TYPE_4__**) ;
 int atop (scalar_t__) ;
 scalar_t__ mincore_mapped ;
 scalar_t__ pmap_extract (int ,scalar_t__) ;
 scalar_t__ pmap_is_modified (TYPE_3__*) ;
 scalar_t__ pmap_is_referenced (TYPE_3__*) ;
 int pmap_mincore (int ,scalar_t__,scalar_t__*) ;
 scalar_t__ round_page (uintptr_t) ;
 int subyte (char*,int) ;
 scalar_t__ trunc_page (uintptr_t) ;
 TYPE_6__* vm_map_entry_succ (TYPE_6__*) ;
 int vm_map_lock_read (TYPE_5__*) ;
 int vm_map_lookup_entry (TYPE_5__*,scalar_t__,TYPE_6__**) ;
 scalar_t__ vm_map_max (TYPE_5__*) ;
 int vm_map_unlock_read (TYPE_5__*) ;
 int vm_page_all_valid (TYPE_3__*) ;
 int vm_page_dirty (TYPE_3__*) ;
 TYPE_3__* vm_page_lookup (TYPE_4__*,int ) ;
 scalar_t__ vm_page_none_valid (TYPE_3__*) ;
 int vmspace_pmap (TYPE_7__*) ;

int
kern_mincore(struct thread *td, uintptr_t addr0, size_t len, char *vec)
{
 pmap_t pmap;
 vm_map_t map;
 vm_map_entry_t current, entry;
 vm_object_t object;
 vm_offset_t addr, cend, end, first_addr;
 vm_paddr_t pa;
 vm_page_t m;
 vm_pindex_t pindex;
 int error, lastvecindex, mincoreinfo, vecindex;
 unsigned int timestamp;





 first_addr = addr = trunc_page(addr0);
 end = round_page(addr0 + len);
 map = &td->td_proc->p_vmspace->vm_map;
 if (end > vm_map_max(map) || end < addr)
  return (ENOMEM);

 pmap = vmspace_pmap(td->td_proc->p_vmspace);

 vm_map_lock_read(map);
RestartScan:
 timestamp = map->timestamp;

 if (!vm_map_lookup_entry(map, addr, &entry)) {
  vm_map_unlock_read(map);
  return (ENOMEM);
 }






 lastvecindex = -1;
 while (entry->start < end) {




  current = entry;
  entry = vm_map_entry_succ(current);
  if (current->end < end &&
      entry->start > current->end) {
   vm_map_unlock_read(map);
   return (ENOMEM);
  }




  if ((current->eflags & MAP_ENTRY_IS_SUB_MAP) ||
      current->object.vm_object == ((void*)0))
   continue;





  if (addr < current->start)
   addr = current->start;
  cend = current->end;
  if (cend > end)
   cend = end;

  for (; addr < cend; addr += PAGE_SIZE) {





   m = ((void*)0);
   object = ((void*)0);
retry:
   pa = 0;
   mincoreinfo = pmap_mincore(pmap, addr, &pa);
   if (mincore_mapped) {




    ;
   } else if (pa != 0) {
    m = PHYS_TO_VM_PAGE(pa);
    while (object == ((void*)0) || m->object != object) {
     if (object != ((void*)0))
      VM_OBJECT_WUNLOCK(object);
     object = (vm_object_t)atomic_load_ptr(
         &m->object);
     if (object == ((void*)0))
      goto retry;
     VM_OBJECT_WLOCK(object);
    }
    if (pa != pmap_extract(pmap, addr))
     goto retry;
    KASSERT(vm_page_all_valid(m),
        ("mincore: page %p is mapped but invalid",
        m));
   } else if (mincoreinfo == 0) {






    if (current->object.vm_object != object) {
     if (object != ((void*)0))
      VM_OBJECT_WUNLOCK(object);
     object = current->object.vm_object;
     VM_OBJECT_WLOCK(object);
    }
    if (object->type == OBJT_DEFAULT ||
        object->type == OBJT_SWAP ||
        object->type == OBJT_VNODE) {
     pindex = OFF_TO_IDX(current->offset +
         (addr - current->start));
     m = vm_page_lookup(object, pindex);
     if (m != ((void*)0) && vm_page_none_valid(m))
      m = ((void*)0);
     if (m != ((void*)0))
      mincoreinfo = MINCORE_INCORE;
    }
   }
   if (m != ((void*)0)) {
    VM_OBJECT_ASSERT_WLOCKED(m->object);


    if (m->dirty == 0 && pmap_is_modified(m))
     vm_page_dirty(m);
    if (m->dirty != 0)
     mincoreinfo |= MINCORE_MODIFIED_OTHER;
    if ((m->aflags & PGA_REFERENCED) != 0 ||
        pmap_is_referenced(m) ||
        (m->aflags & PGA_REFERENCED) != 0)
     mincoreinfo |= MINCORE_REFERENCED_OTHER;
   }
   if (object != ((void*)0))
    VM_OBJECT_WUNLOCK(object);





   vm_map_unlock_read(map);




   vecindex = atop(addr - first_addr);





   while ((lastvecindex + 1) < vecindex) {
    ++lastvecindex;
    error = subyte(vec + lastvecindex, 0);
    if (error) {
     error = EFAULT;
     goto done2;
    }
   }




   error = subyte(vec + vecindex, mincoreinfo);
   if (error) {
    error = EFAULT;
    goto done2;
   }





   vm_map_lock_read(map);
   if (timestamp != map->timestamp)
    goto RestartScan;

   lastvecindex = vecindex;
  }
 }





 vm_map_unlock_read(map);




 vecindex = atop(end - first_addr);
 while ((lastvecindex + 1) < vecindex) {
  ++lastvecindex;
  error = subyte(vec + lastvecindex, 0);
  if (error) {
   error = EFAULT;
   goto done2;
  }
 }





 vm_map_lock_read(map);
 if (timestamp != map->timestamp)
  goto RestartScan;
 vm_map_unlock_read(map);
done2:
 return (error);
}
