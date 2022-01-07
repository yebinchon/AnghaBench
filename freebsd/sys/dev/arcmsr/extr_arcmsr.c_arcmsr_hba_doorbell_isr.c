
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;


 int ARCMSR_OUTBOUND_IOP331_DATA_READ_OK ;
 int ARCMSR_OUTBOUND_IOP331_DATA_WRITE_OK ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBA_MessageUnit ;
 int arcmsr_iop2drv_data_read_handle (struct AdapterControlBlock*) ;
 int arcmsr_iop2drv_data_wrote_handle (struct AdapterControlBlock*) ;
 int outbound_doorbell ;

__attribute__((used)) static void arcmsr_hba_doorbell_isr(struct AdapterControlBlock *acb)
{
 u_int32_t doorbell_status;
 doorbell_status = CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_doorbell);
 CHIP_REG_WRITE32(HBA_MessageUnit, 0, outbound_doorbell, doorbell_status);
 if(doorbell_status & ARCMSR_OUTBOUND_IOP331_DATA_WRITE_OK) {
  arcmsr_iop2drv_data_wrote_handle(acb);
 }
 if(doorbell_status & ARCMSR_OUTBOUND_IOP331_DATA_READ_OK) {
  arcmsr_iop2drv_data_read_handle(acb);
 }
}
