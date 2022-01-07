
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int outbound_int_enable; } ;


 int ARCMSR_HBDMU_ALL_INT_DISABLE ;
 int ARCMSR_HBDMU_ALL_INT_ENABLE ;
 int ARCMSR_HBDMU_OUTBOUND_DOORBELL_INT ;
 int ARCMSR_HBDMU_OUTBOUND_INT ;
 int ARCMSR_HBDMU_OUTBOUND_POSTQUEUE_INT ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBD_MessageUnit ;
 int arcmsr_hbd_doorbell_isr (struct AdapterControlBlock*) ;
 int arcmsr_hbd_postqueue_isr (struct AdapterControlBlock*) ;
 int host_int_status ;
 int pcief0_int_enable ;

__attribute__((used)) static void arcmsr_handle_hbd_isr( struct AdapterControlBlock *acb)
{
 u_int32_t host_interrupt_status;
 u_int32_t intmask_org;





 host_interrupt_status = CHIP_REG_READ32(HBD_MessageUnit, 0, host_int_status) & acb->outbound_int_enable;
 if(!(host_interrupt_status & ARCMSR_HBDMU_OUTBOUND_INT)) {

  return;
 }

 intmask_org = CHIP_REG_READ32(HBD_MessageUnit, 0, pcief0_int_enable) ;
 CHIP_REG_WRITE32(HBD_MessageUnit, 0, pcief0_int_enable, ARCMSR_HBDMU_ALL_INT_DISABLE);

 if(host_interrupt_status & ARCMSR_HBDMU_OUTBOUND_DOORBELL_INT) {
  arcmsr_hbd_doorbell_isr(acb);
 }

 if(host_interrupt_status & ARCMSR_HBDMU_OUTBOUND_POSTQUEUE_INT) {
  arcmsr_hbd_postqueue_isr(acb);
 }

 CHIP_REG_WRITE32(HBD_MessageUnit, 0, pcief0_int_enable, intmask_org | ARCMSR_HBDMU_ALL_INT_ENABLE);

}
