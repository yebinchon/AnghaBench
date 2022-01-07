
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct HBB_MessageUnit {int doneq_index; int* done_qbuffer; } ;
struct AdapterControlBlock {int srb_dmamap; int srb_dmat; scalar_t__ pmu; } ;


 int ARCMSR_MAX_HBB_POSTQUEUE ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int FALSE ;
 int TRUE ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static void arcmsr_hbb_postqueue_isr(struct AdapterControlBlock *acb)
{
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
 u_int32_t flag_srb;
 int index;
 u_int16_t error;






 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap,
  BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 index = phbbmu->doneq_index;
 while((flag_srb = phbbmu->done_qbuffer[index]) != 0) {
  phbbmu->done_qbuffer[index] = 0;
  index++;
  index %= ARCMSR_MAX_HBB_POSTQUEUE;
  phbbmu->doneq_index = index;

 error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
  arcmsr_drain_donequeue(acb, flag_srb, error);
 }
}
