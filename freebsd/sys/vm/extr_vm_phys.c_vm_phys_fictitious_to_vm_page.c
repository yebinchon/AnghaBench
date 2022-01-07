
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
struct vm_phys_fictitious_seg {scalar_t__ start; TYPE_1__* first_page; scalar_t__ end; } ;
struct TYPE_3__ {int flags; } ;


 int KASSERT (int,char*) ;
 int PG_FICTITIOUS ;
 struct vm_phys_fictitious_seg* RB_FIND (int ,int *,struct vm_phys_fictitious_seg*) ;
 size_t atop (scalar_t__) ;
 int fict_tree ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int vm_phys_fictitious_reg_lock ;
 int vm_phys_fictitious_tree ;

vm_page_t
vm_phys_fictitious_to_vm_page(vm_paddr_t pa)
{
 struct vm_phys_fictitious_seg tmp, *seg;
 vm_page_t m;

 m = ((void*)0);
 tmp.start = pa;
 tmp.end = 0;

 rw_rlock(&vm_phys_fictitious_reg_lock);
 seg = RB_FIND(fict_tree, &vm_phys_fictitious_tree, &tmp);
 rw_runlock(&vm_phys_fictitious_reg_lock);
 if (seg == ((void*)0))
  return (((void*)0));

 m = &seg->first_page[atop(pa - seg->start)];
 KASSERT((m->flags & PG_FICTITIOUS) != 0, ("%p not fictitious", m));

 return (m);
}
