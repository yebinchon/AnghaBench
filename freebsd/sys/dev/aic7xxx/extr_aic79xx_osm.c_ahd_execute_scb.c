
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int flags; scalar_t__ func_code; int status; } ;
union ccb {TYPE_5__ ccb_h; } ;
typedef int u_int ;
struct target_data {int data_phase; int target_phases; } ;
struct scb {int flags; TYPE_4__* hscb; int dmamap; void* sg_list; scalar_t__ sg_count; struct ahd_softc* ahd_softc; union ccb* io_ctx; } ;
struct ahd_tmode_tstate {int discenable; int auto_negotiate; } ;
struct TYPE_14__ {struct scb** scbindex; } ;
struct ahd_softc {TYPE_6__ scb_data; int pending_scbs; int buffer_dmat; } ;
struct TYPE_11__ {scalar_t__ width; scalar_t__ period; scalar_t__ ppr_options; } ;
struct TYPE_10__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_3__ goal; TYPE_2__ curr; } ;
typedef int bus_dmasync_op_t ;
struct TYPE_15__ {int ds_len; int ds_addr; } ;
typedef TYPE_7__ bus_dma_segment_t ;
struct TYPE_9__ {struct target_data tdata; } ;
struct TYPE_12__ {scalar_t__ task_management; int control; int scsiid; TYPE_1__ shared_data; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;
 int CAM_DIS_DISCONNECT ;
 int CAM_NEGOTIATE ;
 int CAM_REQ_CMP_ERR ;
 scalar_t__ CAM_REQ_INPROG ;
 int CAM_REQ_TOO_BIG ;
 int CAM_SIM_QUEUED ;
 int CONT_MSG_LOOP_TARG ;
 int DISCENB ;
 int DPHASE_PENDING ;
 int EFBIG ;
 int LIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int MK_MESSAGE ;
 int MSG_EXT_PPR_IU_REQ ;
 int P_DATAIN ;
 int P_DATAOUT ;
 int RETURN_1 ;
 int SCB_AUTO_NEGOTIATE ;
 size_t SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET_MASK (struct ahd_softc*,struct scb*) ;
 int SCB_NEGOTIATE ;
 int SCB_PACKETIZED ;
 int SCB_TARGET_IMMEDIATE ;
 int SCSIID_CHANNEL (struct ahd_softc*,int ) ;
 int SCSIID_OUR_ID (int ) ;
 int SCSIID_TARGET (struct ahd_softc*,int ) ;
 scalar_t__ XPT_CONT_TARGET_IO ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_free_scb (struct ahd_softc*,struct scb*) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_queue_scb (struct ahd_softc*,struct scb*) ;
 int ahd_set_scbptr (struct ahd_softc*,size_t) ;
 void* ahd_sg_setup (struct ahd_softc*,struct scb*,void*,int ,int ,int) ;
 int ahd_unpause (struct ahd_softc*) ;
 scalar_t__ aic_get_transaction_status (struct scb*) ;
 int aic_scb_timer_start (struct scb*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int pending_links ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ahd_execute_scb(void *arg, bus_dma_segment_t *dm_segs, int nsegments,
  int error)
{
 struct scb *scb;
 union ccb *ccb;
 struct ahd_softc *ahd;
 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 u_int mask;

 scb = (struct scb *)arg;
 ccb = scb->io_ctx;
 ahd = scb->ahd_softc;

 if (error != 0) {
  if (error == EFBIG)
   aic_set_transaction_status(scb, CAM_REQ_TOO_BIG);
  else
   aic_set_transaction_status(scb, CAM_REQ_CMP_ERR);
  if (nsegments != 0)
   bus_dmamap_unload(ahd->buffer_dmat, scb->dmamap);
  ahd_free_scb(ahd, scb);
  xpt_done(ccb);
  return;
 }
 scb->sg_count = 0;
 if (nsegments != 0) {
  void *sg;
  bus_dmasync_op_t op;
  u_int i;


  for (i = nsegments, sg = scb->sg_list; i > 0; i--) {

   sg = ahd_sg_setup(ahd, scb, sg, dm_segs->ds_addr,
       dm_segs->ds_len,
               i == 1);
   dm_segs++;
  }

  if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN)
   op = BUS_DMASYNC_PREREAD;
  else
   op = BUS_DMASYNC_PREWRITE;

  bus_dmamap_sync(ahd->buffer_dmat, scb->dmamap, op);

  if (ccb->ccb_h.func_code == XPT_CONT_TARGET_IO) {
   struct target_data *tdata;

   tdata = &scb->hscb->shared_data.tdata;
   tdata->target_phases |= DPHASE_PENDING;
   if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT)
    tdata->data_phase = P_DATAOUT;
   else
    tdata->data_phase = P_DATAIN;
  }
 }





 if (aic_get_transaction_status(scb) != CAM_REQ_INPROG) {
  if (nsegments != 0)
   bus_dmamap_unload(ahd->buffer_dmat,
       scb->dmamap);
  ahd_free_scb(ahd, scb);
  xpt_done(ccb);
  return;
 }

 tinfo = ahd_fetch_transinfo(ahd, SCSIID_CHANNEL(ahd, scb->hscb->scsiid),
        SCSIID_OUR_ID(scb->hscb->scsiid),
        SCSIID_TARGET(ahd, scb->hscb->scsiid),
        &tstate);

 mask = SCB_GET_TARGET_MASK(ahd, scb);

 if ((tstate->discenable & mask) != 0
  && (ccb->ccb_h.flags & CAM_DIS_DISCONNECT) == 0)
  scb->hscb->control |= DISCENB;

 if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0) {
  scb->flags |= SCB_PACKETIZED;
  if (scb->hscb->task_management != 0)
   scb->hscb->control &= ~MK_MESSAGE;
 }

 if ((ccb->ccb_h.flags & CAM_NEGOTIATE) != 0
  && (tinfo->goal.width != 0
   || tinfo->goal.period != 0
   || tinfo->goal.ppr_options != 0)) {
  scb->flags |= SCB_NEGOTIATE;
  scb->hscb->control |= MK_MESSAGE;
 } else if ((tstate->auto_negotiate & mask) != 0) {
  scb->flags |= SCB_AUTO_NEGOTIATE;
  scb->hscb->control |= MK_MESSAGE;
 }

 LIST_INSERT_HEAD(&ahd->pending_scbs, scb, pending_links);

 ccb->ccb_h.status |= CAM_SIM_QUEUED;

 aic_scb_timer_start(scb);

 if ((scb->flags & SCB_TARGET_IMMEDIATE) != 0) {

  ahd->scb_data.scbindex[SCB_GET_TAG(scb)] = scb;
  ahd_pause(ahd);
  ahd_set_scbptr(ahd, SCB_GET_TAG(scb));
  ahd_outb(ahd, RETURN_1, CONT_MSG_LOOP_TARG);
  ahd_unpause(ahd);
 } else {
  ahd_queue_scb(ahd, scb);
 }

}
