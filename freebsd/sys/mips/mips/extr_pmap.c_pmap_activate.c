
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int ;
struct thread {struct proc* td_proc; } ;
struct proc {int p_vmspace; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_7__ {TYPE_1__* pm_asid; struct TYPE_7__* pm_segtab; int pm_active; } ;
struct TYPE_6__ {int asid; } ;


 int CPU_CLR_ATOMIC (size_t,int *) ;
 int CPU_SET_ATOMIC (size_t,int *) ;
 void* PCPU_GET (size_t) ;
 int PCPU_SET (size_t,TYPE_2__*) ;
 int critical_enter () ;
 int critical_exit () ;
 size_t curpmap ;
 struct thread* curthread ;
 int mips_wr_entryhi (int ) ;
 int pmap_asid_alloc (TYPE_2__*) ;
 size_t segbase ;
 TYPE_2__* vmspace_pmap (int ) ;

void
pmap_activate(struct thread *td)
{
 pmap_t pmap, oldpmap;
 struct proc *p = td->td_proc;
 u_int cpuid;

 critical_enter();

 pmap = vmspace_pmap(p->p_vmspace);
 oldpmap = PCPU_GET(curpmap);
 cpuid = PCPU_GET(cpuid);

 if (oldpmap)
  CPU_CLR_ATOMIC(cpuid, &oldpmap->pm_active);
 CPU_SET_ATOMIC(cpuid, &pmap->pm_active);
 pmap_asid_alloc(pmap);
 if (td == curthread) {
  PCPU_SET(segbase, pmap->pm_segtab);
  mips_wr_entryhi(pmap->pm_asid[cpuid].asid);
 }

 PCPU_SET(curpmap, pmap);
 critical_exit();
}
