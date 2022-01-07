
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; TYPE_3__* td_proc; } ;
typedef TYPE_6__* pmap_t ;
typedef int mmu_t ;
struct TYPE_13__ {int pm_active; struct TYPE_13__* pmap_phys; } ;
struct TYPE_12__ {int usr_vsid; } ;
struct TYPE_11__ {TYPE_5__ aim; } ;
struct TYPE_10__ {TYPE_2__* p_vmspace; } ;
struct TYPE_9__ {TYPE_6__ vm_pmap; } ;
struct TYPE_8__ {TYPE_4__ pcb_cpu; } ;


 int ADDR_SR_SHFT ;
 int CPU_SET (int ,int *) ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,TYPE_6__*) ;
 int USER_SR ;
 int cpuid ;
 int curpmap ;
 int mtsrin (int,int ) ;

void
moea_activate(mmu_t mmu, struct thread *td)
{
 pmap_t pm, pmr;





 pm = &td->td_proc->p_vmspace->vm_pmap;
 pmr = pm->pmap_phys;

 CPU_SET(PCPU_GET(cpuid), &pm->pm_active);
 PCPU_SET(curpmap, pmr);

 mtsrin(USER_SR << ADDR_SR_SHFT, td->td_pcb->pcb_cpu.aim.usr_vsid);
}
