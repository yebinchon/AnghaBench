
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct HBB_MessageUnit {int* done_qbuffer; int postq_index; int doneq_index; int * post_qbuffer; int iop2drv_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int outbound_int_enable; scalar_t__ pmu; } ;







 int ARCMSR_DOORBELL_INT_CLEAR_PATTERN ;
 int ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR ;
 int ARCMSR_MAX_HBB_POSTQUEUE ;
 int ARCMSR_MAX_OUTSTANDING_CMD ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 int CHIP_REG_READ32 (int ,int ,int) ;
 int CHIP_REG_WRITE32 (int ,int ,int,int) ;
 int FALSE ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int TRUE ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int,int ) ;
 int arcmsr_hbd_postqueue_isr (struct AdapterControlBlock*) ;
 int arcmsr_hbe_postqueue_isr (struct AdapterControlBlock*) ;
 int host_int_status ;
 int outbound_queueport ;
 int outbound_queueport_low ;

__attribute__((used)) static void arcmsr_done4abort_postqueue(struct AdapterControlBlock *acb)
{
 int i=0;
 u_int32_t flag_srb;
 u_int16_t error;

 switch (acb->adapter_type) {
 case 132: {
   u_int32_t outbound_intstatus;


   outbound_intstatus = CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_intstatus) & acb->outbound_int_enable;
   CHIP_REG_WRITE32(HBA_MessageUnit, 0, outbound_intstatus, outbound_intstatus);
   while(((flag_srb=CHIP_REG_READ32(HBA_MessageUnit, 0, outbound_queueport)) != 0xFFFFFFFF) && (i++ < ARCMSR_MAX_OUTSTANDING_CMD)) {
    error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
    arcmsr_drain_donequeue(acb, flag_srb, error);
   }
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu=(struct HBB_MessageUnit *)acb->pmu;


   WRITE_CHIP_REG32(0, phbbmu->iop2drv_doorbell, ARCMSR_DOORBELL_INT_CLEAR_PATTERN);
   for(i=0; i < ARCMSR_MAX_HBB_POSTQUEUE; i++) {
    if((flag_srb = phbbmu->done_qbuffer[i]) != 0) {
     phbbmu->done_qbuffer[i] = 0;
     error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
     arcmsr_drain_donequeue(acb, flag_srb, error);
    }
    phbbmu->post_qbuffer[i] = 0;
   }
   phbbmu->doneq_index = 0;
   phbbmu->postq_index = 0;
  }
  break;
 case 130: {

   while((CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_status) & ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR) && (i++ < ARCMSR_MAX_OUTSTANDING_CMD)) {
    flag_srb = CHIP_REG_READ32(HBC_MessageUnit, 0, outbound_queueport_low);
    error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
    arcmsr_drain_donequeue(acb, flag_srb, error);
   }
  }
  break;
 case 129: {
   arcmsr_hbd_postqueue_isr(acb);
  }
  break;
 case 128: {
   arcmsr_hbe_postqueue_isr(acb);
  }
  break;
 }
}
