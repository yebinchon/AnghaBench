
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR ;
 int ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int HBC_MessageUnit ;
 int arcmsr_hbc_doorbell_isr (struct AdapterControlBlock*) ;
 int arcmsr_hbc_postqueue_isr (struct AdapterControlBlock*) ;
 int host_int_status ;

__attribute__((used)) static void arcmsr_handle_hbc_isr( struct AdapterControlBlock *acb)
{
 u_int32_t host_interrupt_status;





 host_interrupt_status = CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_status) &
  (ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR |
  ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR);
 if(!host_interrupt_status) {

  return;
 }
 do {

  if(host_interrupt_status & ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR) {
   arcmsr_hbc_doorbell_isr(acb);
  }

  if(host_interrupt_status & ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR) {
   arcmsr_hbc_postqueue_isr(acb);
  }
  host_interrupt_status = CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_status);
 } while (host_interrupt_status & (ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR | ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR));
}
