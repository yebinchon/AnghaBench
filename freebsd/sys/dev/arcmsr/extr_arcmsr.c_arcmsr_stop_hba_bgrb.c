
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int pci_unit; int acb_flags; } ;


 int ACB_F_MSG_START_BGRB ;
 int ARCMSR_INBOUND_MESG0_STOP_BGRB ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBA_MessageUnit ;
 int arcmsr_hba_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_msgaddr0 ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_stop_hba_bgrb(struct AdapterControlBlock *acb)
{
 acb->acb_flags &= ~ACB_F_MSG_START_BGRB;
 CHIP_REG_WRITE32(HBA_MessageUnit,
  0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_STOP_BGRB);
 if(!arcmsr_hba_wait_msgint_ready(acb)) {
  printf("arcmsr%d: wait 'stop adapter background rebulid' timeout \n"
   , acb->pci_unit);
 }
}
