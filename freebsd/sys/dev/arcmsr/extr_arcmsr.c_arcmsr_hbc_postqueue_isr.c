
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct AdapterControlBlock {int srb_dmamap; int srb_dmat; } ;


 int ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING ;
 int ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR ;
 int ARCMSR_HBC_ISR_THROTTLING_LEVEL ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int ) ;
 int FALSE ;
 int HBC_MessageUnit ;
 int TRUE ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int host_int_status ;
 int inbound_doorbell ;
 int outbound_queueport_low ;

__attribute__((used)) static void arcmsr_hbc_postqueue_isr(struct AdapterControlBlock *acb)
{
 u_int32_t flag_srb,throttling = 0;
 u_int16_t error;






 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 do {
  flag_srb = CHIP_REG_READ32(HBC_MessageUnit, 0, outbound_queueport_low);
  if (flag_srb == 0xFFFFFFFF)
   break;

  error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1)?TRUE:FALSE;
  arcmsr_drain_donequeue(acb, flag_srb, error);
  throttling++;
  if(throttling == ARCMSR_HBC_ISR_THROTTLING_LEVEL) {
   CHIP_REG_WRITE32(HBC_MessageUnit, 0, inbound_doorbell,ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING);
   throttling = 0;
  }
 } while(CHIP_REG_READ32(HBC_MessageUnit, 0, host_int_status) & ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR);
}
