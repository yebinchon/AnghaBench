
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
typedef TYPE_3__* pmap_t ;
typedef int mmu_t ;
struct TYPE_6__ {int pm_active; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {TYPE_3__ vm_pmap; } ;


 int CPU_CLR (int ,int *) ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int cpuid ;
 int curpmap ;

void
moea_deactivate(mmu_t mmu, struct thread *td)
{
 pmap_t pm;

 pm = &td->td_proc->p_vmspace->vm_pmap;
 CPU_CLR(PCPU_GET(cpuid), &pm->pm_active);
 PCPU_SET(curpmap, ((void*)0));
}
