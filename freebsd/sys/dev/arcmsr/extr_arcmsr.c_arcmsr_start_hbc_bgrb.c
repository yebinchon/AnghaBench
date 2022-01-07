
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int pci_unit; int acb_flags; } ;


 int ACB_F_MSG_START_BGRB ;
 int ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_START_BGRB ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBC_MessageUnit ;
 int arcmsr_hbc_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_doorbell ;
 int inbound_msgaddr0 ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_start_hbc_bgrb(struct AdapterControlBlock *acb)
{
 acb->acb_flags |= ACB_F_MSG_START_BGRB;
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_START_BGRB);
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
 if(!arcmsr_hbc_wait_msgint_ready(acb)) {
  printf("arcmsr%d: wait 'start adapter background rebulid' timeout \n", acb->pci_unit);
 }
}
