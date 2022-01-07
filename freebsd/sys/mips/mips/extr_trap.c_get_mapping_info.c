
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct proc {TYPE_1__* p_vmspace; } ;
typedef int pt_entry_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_4__ {scalar_t__* pm_segtab; } ;
struct TYPE_3__ {TYPE_2__ vm_pmap; } ;


 int NPDEPG ;
 int SEGSHIFT ;
 struct proc* curproc ;
 int * pmap_pte (TYPE_2__*,int) ;

__attribute__((used)) static void
get_mapping_info(vm_offset_t va, pd_entry_t **pdepp, pt_entry_t **ptepp)
{
 pt_entry_t *ptep;
 pd_entry_t *pdep;
 struct proc *p = curproc;

 pdep = (&(p->p_vmspace->vm_pmap.pm_segtab[(va >> SEGSHIFT) & (NPDEPG - 1)]));
 if (*pdep)
  ptep = pmap_pte(&p->p_vmspace->vm_pmap, va);
 else
  ptep = (pt_entry_t *)0;

 *pdepp = pdep;
 *ptepp = ptep;
}
