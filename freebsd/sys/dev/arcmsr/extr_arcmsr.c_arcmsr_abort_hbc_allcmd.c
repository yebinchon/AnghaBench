
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int pci_unit; } ;


 int ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_ABORT_CMD ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBC_MessageUnit ;
 int arcmsr_hbc_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_doorbell ;
 int inbound_msgaddr0 ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_abort_hbc_allcmd(struct AdapterControlBlock *acb)
{
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_ABORT_CMD);
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
 if(!arcmsr_hbc_wait_msgint_ready(acb)) {
  printf("arcmsr%d: wait 'abort all outstanding command' timeout \n", acb->pci_unit);
 }
}
