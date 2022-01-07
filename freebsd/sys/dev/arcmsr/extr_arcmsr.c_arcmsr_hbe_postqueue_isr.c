
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct AdapterControlBlock {int doneq_index; int completionQ_entry; TYPE_1__* pCompletionQ; int srb_dmamap; int srb_dmat; } ;
struct TYPE_2__ {int cmdFlag; scalar_t__ cmdSMID; } ;


 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int FALSE ;
 int HBE_MessageUnit ;
 int TRUE ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int reply_post_consumer_index ;
 int reply_post_producer_index ;

__attribute__((used)) static void arcmsr_hbe_postqueue_isr(struct AdapterControlBlock *acb)
{
 u_int16_t error;
 uint32_t doneq_index;
 uint16_t cmdSMID;






 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 doneq_index = acb->doneq_index;
 while ((CHIP_REG_READ32(HBE_MessageUnit, 0, reply_post_producer_index) & 0xFFFF) != doneq_index) {
  cmdSMID = acb->pCompletionQ[doneq_index].cmdSMID;
  error = (acb->pCompletionQ[doneq_index].cmdFlag & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
  arcmsr_drain_donequeue(acb, (u_int32_t)cmdSMID, error);
  doneq_index++;
  if (doneq_index >= acb->completionQ_entry)
   doneq_index = 0;
 }
 acb->doneq_index = doneq_index;
 CHIP_REG_WRITE32(HBE_MessageUnit, 0, reply_post_consumer_index, doneq_index);
}
