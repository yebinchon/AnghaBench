
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct HBD_MessageUnit0 {int doneq_index; TYPE_1__* done_qbuffer; } ;
struct AdapterControlBlock {int srb_dmamap; int srb_dmat; scalar_t__ pmu; } ;
struct TYPE_2__ {int addressLow; } ;


 int ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT ;
 int ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT_CLEAR ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CHIP_REG_READ32 (int ,int ,int ) ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int FALSE ;
 int HBD_MessageUnit ;
 int TRUE ;
 int arcmsr_drain_donequeue (struct AdapterControlBlock*,int,int ) ;
 int arcmsr_get_doneq_index (struct HBD_MessageUnit0*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int outboundlist_interrupt_cause ;
 int outboundlist_read_pointer ;

__attribute__((used)) static void arcmsr_hbd_postqueue_isr(struct AdapterControlBlock *acb)
{
 struct HBD_MessageUnit0 *phbdmu = (struct HBD_MessageUnit0 *)acb->pmu;
 u_int32_t outbound_write_pointer;
 u_int32_t addressLow;
 uint16_t doneq_index;
 u_int16_t error;





 if((CHIP_REG_READ32(HBD_MessageUnit, 0, outboundlist_interrupt_cause) &
  ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT) == 0)
  return;
 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap,
  BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 outbound_write_pointer = phbdmu->done_qbuffer[0].addressLow;
 doneq_index = phbdmu->doneq_index;
 while ((doneq_index & 0xFF) != (outbound_write_pointer & 0xFF)) {
  doneq_index = arcmsr_get_doneq_index(phbdmu);
  addressLow = phbdmu->done_qbuffer[(doneq_index & 0xFF)+1].addressLow;
  error = (addressLow & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
  arcmsr_drain_donequeue(acb, addressLow, error);
  CHIP_REG_WRITE32(HBD_MessageUnit, 0, outboundlist_read_pointer, doneq_index);
  outbound_write_pointer = phbdmu->done_qbuffer[0].addressLow;
 }
 CHIP_REG_WRITE32(HBD_MessageUnit, 0, outboundlist_interrupt_cause, ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT_CLEAR);
 CHIP_REG_READ32(HBD_MessageUnit, 0, outboundlist_interrupt_cause);
}
