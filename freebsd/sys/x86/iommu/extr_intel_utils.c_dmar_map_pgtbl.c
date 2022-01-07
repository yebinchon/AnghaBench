
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
struct sf_buf {int dummy; } ;
struct TYPE_5__ {int pindex; } ;


 int DMAR_PGF_ALLOC ;
 int DMAR_PGF_OBJL ;
 int DMAR_PGF_WAITOK ;
 int SFB_CPUPRIVATE ;
 int SFB_NOWAIT ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 TYPE_1__* dmar_pgalloc (int ,int ,int) ;
 int dmar_pgfree (int ,int ,int) ;
 int sched_pin () ;
 int sched_unpin () ;
 struct sf_buf* sf_buf_alloc (TYPE_1__*,int) ;
 scalar_t__ sf_buf_kva (struct sf_buf*) ;
 TYPE_1__* vm_page_lookup (int ,int ) ;

void *
dmar_map_pgtbl(vm_object_t obj, vm_pindex_t idx, int flags,
    struct sf_buf **sf)
{
 vm_page_t m;
 bool allocated;

 if ((flags & DMAR_PGF_OBJL) == 0)
  VM_OBJECT_WLOCK(obj);
 m = vm_page_lookup(obj, idx);
 if (m == ((void*)0) && (flags & DMAR_PGF_ALLOC) != 0) {
  m = dmar_pgalloc(obj, idx, flags | DMAR_PGF_OBJL);
  allocated = 1;
 } else
  allocated = 0;
 if (m == ((void*)0)) {
  if ((flags & DMAR_PGF_OBJL) == 0)
   VM_OBJECT_WUNLOCK(obj);
  return (((void*)0));
 }

 if ((flags & DMAR_PGF_WAITOK) != 0)
  VM_OBJECT_WUNLOCK(obj);
 sched_pin();
 *sf = sf_buf_alloc(m, SFB_CPUPRIVATE | ((flags & DMAR_PGF_WAITOK)
     == 0 ? SFB_NOWAIT : 0));
 if (*sf == ((void*)0)) {
  sched_unpin();
  if (allocated) {
   VM_OBJECT_ASSERT_WLOCKED(obj);
   dmar_pgfree(obj, m->pindex, flags | DMAR_PGF_OBJL);
  }
  if ((flags & DMAR_PGF_OBJL) == 0)
   VM_OBJECT_WUNLOCK(obj);
  return (((void*)0));
 }
 if ((flags & (DMAR_PGF_WAITOK | DMAR_PGF_OBJL)) ==
     (DMAR_PGF_WAITOK | DMAR_PGF_OBJL))
  VM_OBJECT_WLOCK(obj);
 else if ((flags & (DMAR_PGF_WAITOK | DMAR_PGF_OBJL)) == 0)
  VM_OBJECT_WUNLOCK(obj);
 return ((void *)sf_buf_kva(*sf));
}
