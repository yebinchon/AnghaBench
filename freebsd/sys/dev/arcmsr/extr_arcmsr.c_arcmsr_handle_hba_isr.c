
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int outbound_int_enable; } ;


 int ARCMSR_MU_OUTBOUND_DOORBELL_INT ;
 int ARCMSR_MU_OUTBOUND_MESSAGE0_INT ;
 int ARCMSR_MU_OUTBOUND_POSTQUEUE_INT ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBA_MessageUnit ;
 int arcmsr_hba_doorbell_isr (struct AdapterControlBlock*) ;
 int arcmsr_hba_message_isr (struct AdapterControlBlock*) ;
 int arcmsr_hba_postqueue_isr (struct AdapterControlBlock*) ;
 int outbound_intstatus ;

__attribute__((used)) static void arcmsr_handle_hba_isr( struct AdapterControlBlock *acb)
{
 u_int32_t outbound_intStatus;





 outbound_intStatus = CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_intstatus) & acb->outbound_int_enable;
 if(!outbound_intStatus) {

  return;
 }
 CHIP_REG_WRITE32(HBA_MessageUnit, 0, outbound_intstatus, outbound_intStatus);

 if(outbound_intStatus & ARCMSR_MU_OUTBOUND_DOORBELL_INT) {
  arcmsr_hba_doorbell_isr(acb);
 }

 if(outbound_intStatus & ARCMSR_MU_OUTBOUND_POSTQUEUE_INT) {
  arcmsr_hba_postqueue_isr(acb);
 }
 if(outbound_intStatus & ARCMSR_MU_OUTBOUND_MESSAGE0_INT) {
  arcmsr_hba_message_isr(acb);
 }
}
