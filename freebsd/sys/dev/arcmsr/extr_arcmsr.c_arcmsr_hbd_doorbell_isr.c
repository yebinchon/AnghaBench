
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_HBDMU_F0_DOORBELL_CAUSE ;
 int ARCMSR_HBDMU_IOP2DRV_DATA_READ_OK ;
 int ARCMSR_HBDMU_IOP2DRV_DATA_WRITE_OK ;
 int ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBD_MessageUnit ;
 int arcmsr_hbd_message_isr (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_read_handle (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_wrote_handle (struct AdapterControlBlock*) ;
 int outbound_doorbell ;

__attribute__((used)) static void arcmsr_hbd_doorbell_isr(struct AdapterControlBlock *acb)
{
 u_int32_t doorbell_status;
 doorbell_status = CHIP_REG_READ32(HBD_MessageUnit, 0, outbound_doorbell) & ARCMSR_HBDMU_F0_DOORBELL_CAUSE;
 if(doorbell_status)
  CHIP_REG_WRITE32(HBD_MessageUnit, 0, outbound_doorbell, doorbell_status);
 while( doorbell_status & ARCMSR_HBDMU_F0_DOORBELL_CAUSE ) {
  if(doorbell_status & ARCMSR_HBDMU_IOP2DRV_DATA_WRITE_OK) {
   arcmsr_iop2drv_data_wrote_handle(acb);
  }
  if(doorbell_status & ARCMSR_HBDMU_IOP2DRV_DATA_READ_OK) {
   arcmsr_iop2drv_data_read_handle(acb);
  }
  if(doorbell_status & ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE) {
   arcmsr_hbd_message_isr(acb);
  }
  doorbell_status = CHIP_REG_READ32(HBD_MessageUnit, 0, outbound_doorbell) & ARCMSR_HBDMU_F0_DOORBELL_CAUSE;
  if(doorbell_status)
   CHIP_REG_WRITE32(HBD_MessageUnit, 0, outbound_doorbell, doorbell_status);
 }
}
