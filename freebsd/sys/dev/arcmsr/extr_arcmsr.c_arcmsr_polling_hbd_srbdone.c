
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct HBD_MessageUnit0 {int doneq_index; TYPE_1__* done_qbuffer; } ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_3__* pccb; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int pci_unit; scalar_t__ vir2phy_offset; int srb_dmamap; int srb_dmat; scalar_t__ pmu; } ;
struct TYPE_5__ {int target_id; int status; scalar_t__ target_lun; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; } ;
struct TYPE_4__ {int addressLow; } ;


 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_REQ_ABORTED ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int FALSE ;
 int HBD_MessageUnit ;
 int TRUE ;
 int UDELAY (int) ;
 int arcmsr_get_doneq_index (struct HBD_MessageUnit0*) ;
 int arcmsr_report_srb_state (struct AdapterControlBlock*,struct CommandControlBlock*,int) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int outboundlist_read_pointer ;
 int printf (char*,int,...) ;

__attribute__((used)) static void arcmsr_polling_hbd_srbdone(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
 struct HBD_MessageUnit0 *phbdmu = (struct HBD_MessageUnit0 *)acb->pmu;
 struct CommandControlBlock *srb;
 u_int32_t flag_srb, poll_srb_done=0, poll_count=0;
 u_int32_t outbound_write_pointer;
 u_int16_t error, doneq_index;

polling_ccb_retry:
 poll_count++;
 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 while(1) {
  outbound_write_pointer = phbdmu->done_qbuffer[0].addressLow;
  doneq_index = phbdmu->doneq_index;
  if ((outbound_write_pointer & 0xFF) == (doneq_index & 0xFF)) {
   if(poll_srb_done) {
    break;
   } else {
    UDELAY(25000);
    if ((poll_count > 100) && (poll_srb != ((void*)0))) {
     break;
    }
    if (acb->srboutstandingcount == 0) {
     break;
    }
    goto polling_ccb_retry;
   }
  }
  doneq_index = arcmsr_get_doneq_index(phbdmu);
  flag_srb = phbdmu->done_qbuffer[(doneq_index & 0xFF)+1].addressLow;

  srb = (struct CommandControlBlock *)(acb->vir2phy_offset+(flag_srb & 0xFFFFFFE0));
  error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
  CHIP_REG_WRITE32(HBD_MessageUnit, 0, outboundlist_read_pointer, doneq_index);
  if (poll_srb != ((void*)0))
   poll_srb_done = (srb == poll_srb) ? 1:0;
  if((srb->acb != acb) || (srb->srb_state != ARCMSR_SRB_START)) {
   if(srb->srb_state == ARCMSR_SRB_ABORTED) {
    printf("arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \n"
      , acb->pci_unit, srb->pccb->ccb_h.target_id, (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
    srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
    arcmsr_srb_complete(srb, 1);
    continue;
   }
   printf("arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \n"
     , acb->pci_unit, srb, acb->srboutstandingcount);
   continue;
  }
  arcmsr_report_srb_state(acb, srb, error);
 }
}
