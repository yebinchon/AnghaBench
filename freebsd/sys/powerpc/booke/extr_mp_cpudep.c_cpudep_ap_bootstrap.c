
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__* pc_curpcb; TYPE_1__* pc_curthread; TYPE_1__* pc_idlethread; } ;
struct TYPE_5__ {uintptr_t pcb_sp; } ;
struct TYPE_4__ {TYPE_2__* td_pcb; } ;


 int L1CSR0_DCE ;
 int L1CSR1_ICE ;
 int PSL_CM ;
 int PSL_ME ;
 int SPR_L1CSR0 ;
 int SPR_L1CSR1 ;
 int dcache_enable () ;
 int dcache_inval () ;
 int icache_enable () ;
 int icache_inval () ;
 int mfspr (int ) ;
 int mtmsr (int) ;
 TYPE_3__* pcpup ;

uintptr_t
cpudep_ap_bootstrap()
{
 uint32_t msr, csr;
 uintptr_t sp;


 csr = mfspr(SPR_L1CSR0);
 if ((csr & L1CSR0_DCE) == 0) {
  dcache_inval();
  dcache_enable();
 }

 csr = mfspr(SPR_L1CSR1);
 if ((csr & L1CSR1_ICE) == 0) {
  icache_inval();
  icache_enable();
 }





 msr = PSL_ME;

 mtmsr(msr);


 pcpup->pc_curthread = pcpup->pc_idlethread;



 __asm __volatile("mr 2,%0" :: "r"(pcpup->pc_curthread));

 pcpup->pc_curpcb = pcpup->pc_curthread->td_pcb;
 sp = pcpup->pc_curpcb->pcb_sp;



 return (sp);
}
