
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int in_doorbell; } ;


 int ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK ;
 int ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK ;
 int ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int HBE_MessageUnit ;
 int arcmsr_hbe_message_isr (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_read_handle (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_wrote_handle (struct AdapterControlBlock*) ;
 int host_int_status ;
 int iobound_doorbell ;

__attribute__((used)) static void arcmsr_hbe_doorbell_isr(struct AdapterControlBlock *acb)
{
 u_int32_t doorbell_status, in_doorbell;
 in_doorbell = CHIP_REG_READ32(HBE_MessageUnit, 0, iobound_doorbell);
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, host_int_status, 0);
 doorbell_status = in_doorbell ^ acb->in_doorbell;
 if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK) {
  arcmsr_iop2drv_data_wrote_handle(acb);
 }
 if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK) {
  arcmsr_iop2drv_data_read_handle(acb);
 }
 if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE) {
  arcmsr_hbe_message_isr(acb);
 }
 acb->in_doorbell = in_doorbell;
}
