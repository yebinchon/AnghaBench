
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {scalar_t__ srboutstandingcount; int acb_flags; int num_resets; } ;


 int ACB_F_BUS_RESET ;
 int UDELAY (int) ;
 int arcmsr_interrupt (struct AdapterControlBlock*) ;
 int arcmsr_iop_reset (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_bus_reset(struct AdapterControlBlock *acb)
{
 int retry = 0;

 acb->num_resets++;
 acb->acb_flags |= ACB_F_BUS_RESET;
 while(acb->srboutstandingcount != 0 && retry < 400) {
  arcmsr_interrupt(acb);
  UDELAY(25000);
  retry++;
 }
 arcmsr_iop_reset(acb);
 acb->acb_flags &= ~ACB_F_BUS_RESET;
}
