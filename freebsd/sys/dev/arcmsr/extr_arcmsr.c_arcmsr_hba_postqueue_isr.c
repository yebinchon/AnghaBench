
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct AdapterControlBlock {int srb_dmamap; int srb_dmat; } ;


 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int FALSE ;
 int HBA_MessageUnit ;
 int TRUE ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int outbound_queueport ;

__attribute__((used)) static void arcmsr_hba_postqueue_isr(struct AdapterControlBlock *acb)
{
 u_int32_t flag_srb;
 u_int16_t error;






 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap,
  BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 while((flag_srb = CHIP_REG_READ32(HBA_MessageUnit,
  0, outbound_queueport)) != 0xFFFFFFFF) {

 error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0) ? TRUE : FALSE;
  arcmsr_drain_donequeue(acb, flag_srb, error);
 }
}
