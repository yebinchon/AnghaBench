
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBCMU_IOP2DRV_DATA_READ_OK ;
 int ARCMSR_HBCMU_IOP2DRV_DATA_WRITE_OK ;
 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBC_MessageUnit ;
 int arcmsr_hbc_message_isr (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_read_handle (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_wrote_handle (struct AdapterControlBlock*) ;
 int outbound_doorbell ;
 int outbound_doorbell_clear ;

__attribute__((used)) static void arcmsr_hbc_doorbell_isr(struct AdapterControlBlock *acb)
{
 u_int32_t doorbell_status;
 doorbell_status = CHIP_REG_READ32(HBC_MessageUnit, 0, outbound_doorbell);
 CHIP_REG_WRITE32(HBC_MessageUnit, 0, outbound_doorbell_clear, doorbell_status);
 if(doorbell_status & ARCMSR_HBCMU_IOP2DRV_DATA_WRITE_OK) {
  arcmsr_iop2drv_data_wrote_handle(acb);
 }
 if(doorbell_status & ARCMSR_HBCMU_IOP2DRV_DATA_READ_OK) {
  arcmsr_iop2drv_data_read_handle(acb);
 }
 if(doorbell_status & ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE) {
  arcmsr_hbc_message_isr(acb);
 }
}
