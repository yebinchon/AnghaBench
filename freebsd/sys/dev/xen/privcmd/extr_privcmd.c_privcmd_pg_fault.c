
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
struct privcmd_map {int mapped; scalar_t__ size; scalar_t__ phys_base_addr; int err; } ;
struct TYPE_14__ {struct privcmd_map* handle; } ;
struct TYPE_13__ {int flags; } ;


 scalar_t__ BIT_ISSET (scalar_t__,scalar_t__,int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ OFF_TO_IDX (scalar_t__) ;
 int PG_FICTITIOUS ;
 TYPE_1__* PHYS_TO_VM_PAGE (scalar_t__) ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 int vm_page_busied (TYPE_1__*) ;
 int vm_page_busy_acquire (TYPE_1__*,int ) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_insert (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int vm_page_valid (TYPE_1__*) ;
 int vm_page_wired (TYPE_1__*) ;

__attribute__((used)) static int
privcmd_pg_fault(vm_object_t object, vm_ooffset_t offset,
    int prot, vm_page_t *mres)
{
 struct privcmd_map *map = object->handle;
 vm_pindex_t pidx;
 vm_page_t page, oldm;

 if (map->mapped != 1)
  return (VM_PAGER_FAIL);

 pidx = OFF_TO_IDX(offset);
 if (pidx >= map->size || BIT_ISSET(map->size, pidx, map->err))
  return (VM_PAGER_FAIL);

 page = PHYS_TO_VM_PAGE(map->phys_base_addr + offset);
 if (page == ((void*)0))
  return (VM_PAGER_FAIL);

 KASSERT((page->flags & PG_FICTITIOUS) != 0,
     ("not fictitious %p", page));
 KASSERT(vm_page_wired(page), ("page %p not wired", page));
 KASSERT(!vm_page_busied(page), ("page %p is busy", page));

 if (*mres != ((void*)0)) {
  oldm = *mres;
  vm_page_free(oldm);
  *mres = ((void*)0);
 }

 vm_page_busy_acquire(page, 0);
 vm_page_valid(page);
 vm_page_insert(page, object, pidx);
 *mres = page;
 return (VM_PAGER_OK);
}
