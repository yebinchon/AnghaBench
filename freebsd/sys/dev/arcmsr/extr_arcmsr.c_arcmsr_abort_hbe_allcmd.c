
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int pci_unit; int out_doorbell; } ;


 int ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE ;
 int ARCMSR_INBOUND_MESG0_ABORT_CMD ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBE_MessageUnit ;
 int arcmsr_hbe_wait_msgint_ready (struct AdapterControlBlock*) ;
 int inbound_msgaddr0 ;
 int iobound_doorbell ;
 int printf (char*,int) ;

__attribute__((used)) static void arcmsr_abort_hbe_allcmd(struct AdapterControlBlock *acb)
{
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_ABORT_CMD);
 acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE;
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
 if(!arcmsr_hbe_wait_msgint_ready(acb)) {
  printf("arcmsr%d: wait 'abort all outstanding command' timeout \n", acb->pci_unit);
 }
}
