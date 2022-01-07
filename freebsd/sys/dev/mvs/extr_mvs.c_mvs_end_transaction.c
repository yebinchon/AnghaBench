
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ func_code; int flags; int status; size_t target_id; scalar_t__ recovery_type; int path; } ;
struct TYPE_9__ {int flags; } ;
struct ata_res {int dummy; } ;
struct TYPE_10__ {TYPE_2__ cmd; struct ata_res res; } ;
struct TYPE_11__ {int scsi_status; scalar_t__ dxfer_len; scalar_t__ resid; } ;
union ccb {TYPE_7__ ccb_h; TYPE_3__ ataio; TYPE_4__ csio; } ;
struct TYPE_13__ {int data_map; } ;
struct mvs_slot {int slot; int tag; union ccb* ccb; int state; TYPE_6__ dma; int dev; } ;
struct TYPE_12__ {int data_tag; int workrq_map; int workrq_tag; } ;
struct mvs_channel {scalar_t__ basic_dma; scalar_t__ numpslots; int eslots; int fatalerr; int oslots; int rslots; int aslots; scalar_t__ numrslots; int* otagspd; int toslots; int* holdtag; int pm_level; int pm_timer; scalar_t__ pm_present; TYPE_1__* curr; int sim; union ccb* frozen; scalar_t__ numhslots; int recoverycmd; union ccb** hold; int numdslots; int * numtslotspd; int numtslots; int * numrslotspd; TYPE_5__ dma; scalar_t__ donecount; } ;
typedef enum mvs_err_type { ____Placeholder_mvs_err_type } mvs_err_type ;
typedef int device_t ;
struct TYPE_8__ {int caps; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_ATAIO_DMA ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 int CAM_ATA_STATUS_ERROR ;
 int CAM_CMD_TIMEOUT ;
 int CAM_DEV_QFRZN ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_DIS_AUTOSENSE ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_REQ_INVALID ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;
 int CAM_UNCOR_PARITY ;
 int CTS_SATA_CAPS_D_PMREQ ;
 int MVS_EDMA_OFF ;







 int MVS_SLOT_EMPTY ;
 scalar_t__ RECOVERY_READ_LOG ;
 scalar_t__ RECOVERY_REQUEST_SENSE ;
 int SCSI_STATUS_CHECK_COND ;
 int SCSI_STATUS_OK ;
 int TRUE ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (struct ata_res*,int) ;
 int callout_schedule (int *,int) ;
 struct mvs_channel* device_get_softc (int ) ;
 int hz ;
 int mvs_begin_transaction (int ,union ccb*) ;
 int mvs_check_collision (int ,union ccb*) ;
 int mvs_issue_recovery (int ) ;
 int mvs_process_read_log (int ,union ccb*) ;
 int mvs_process_request_sense (int ,union ccb*) ;
 int mvs_rearm_timeout (int ) ;
 int mvs_reset (int ) ;
 int mvs_set_edma_mode (int ,int ) ;
 int mvs_tfd_read (int ,union ccb*) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
mvs_end_transaction(struct mvs_slot *slot, enum mvs_err_type et)
{
 device_t dev = slot->dev;
 struct mvs_channel *ch = device_get_softc(dev);
 union ccb *ccb = slot->ccb;
 int lastto;

 bus_dmamap_sync(ch->dma.workrq_tag, ch->dma.workrq_map,
     BUS_DMASYNC_POSTWRITE);




 if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  struct ata_res *res = &ccb->ataio.res;

  if ((et == 129) ||
      (ccb->ataio.cmd.flags & CAM_ATAIO_NEEDRESULT)) {
   mvs_tfd_read(dev, ccb);
  } else
   bzero(res, sizeof(*res));
 } else {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE &&
      ch->basic_dma == 0)
   ccb->csio.resid = ccb->csio.dxfer_len - ch->donecount;
 }
 if (ch->numpslots == 0 || ch->basic_dma) {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
   bus_dmamap_sync(ch->dma.data_tag, slot->dma.data_map,
       (ccb->ccb_h.flags & CAM_DIR_IN) ?
       BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ch->dma.data_tag, slot->dma.data_map);
  }
 }
 if (et != 131)
  ch->eslots |= (1 << slot->slot);

 if ((et != 131) && (!ch->recoverycmd) &&
     !(ccb->ccb_h.status & CAM_DEV_QFRZN)) {
  xpt_freeze_devq(ccb->ccb_h.path, 1);
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
 }

 ccb->ccb_h.status &= ~CAM_STATUS_MASK;
 switch (et) {
 case 131:
  ccb->ccb_h.status |= CAM_REQ_CMP;
  if (ccb->ccb_h.func_code == XPT_SCSI_IO)
   ccb->csio.scsi_status = SCSI_STATUS_OK;
  break;
 case 133:
  ch->fatalerr = 1;
  ccb->ccb_h.status |= CAM_REQ_INVALID;
  break;
 case 134:
  ccb->ccb_h.status |= CAM_REQUEUE_REQ;
  break;
 case 129:
 case 132:
  if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
   ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
   ccb->csio.scsi_status = SCSI_STATUS_CHECK_COND;
  } else {
   ccb->ccb_h.status |= CAM_ATA_STATUS_ERROR;
  }
  break;
 case 130:
  ch->fatalerr = 1;
  if (!ch->recoverycmd) {
   xpt_freeze_simq(ch->sim, 1);
   ccb->ccb_h.status &= ~CAM_STATUS_MASK;
   ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  }
  ccb->ccb_h.status |= CAM_UNCOR_PARITY;
  break;
 case 128:
  if (!ch->recoverycmd) {
   xpt_freeze_simq(ch->sim, 1);
   ccb->ccb_h.status &= ~CAM_STATUS_MASK;
   ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  }
  ccb->ccb_h.status |= CAM_CMD_TIMEOUT;
  break;
 default:
  ch->fatalerr = 1;
  ccb->ccb_h.status |= CAM_REQ_CMP_ERR;
 }

 ch->oslots &= ~(1 << slot->slot);
 ch->rslots &= ~(1 << slot->slot);
 ch->aslots &= ~(1 << slot->slot);
 slot->state = MVS_SLOT_EMPTY;
 slot->ccb = ((void*)0);

 ch->numrslots--;
 ch->numrslotspd[ccb->ccb_h.target_id]--;
 if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  if (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA) {
   ch->otagspd[ccb->ccb_h.target_id] &= ~(1 << slot->tag);
   ch->numtslots--;
   ch->numtslotspd[ccb->ccb_h.target_id]--;
  } else if (ccb->ataio.cmd.flags & CAM_ATAIO_DMA) {
   ch->numdslots--;
  } else {
   ch->numpslots--;
  }
 } else {
  ch->numpslots--;
  ch->basic_dma = 0;
 }

 if (et != 128) {
  lastto = (ch->toslots == (1 << slot->slot));
  ch->toslots &= ~(1 << slot->slot);
  if (lastto)
   xpt_release_simq(ch->sim, TRUE);
 }

 if (ccb->ccb_h.recovery_type == RECOVERY_READ_LOG) {
  mvs_process_read_log(dev, ccb);

 } else if (ccb->ccb_h.recovery_type == RECOVERY_REQUEST_SENSE) {
  mvs_process_request_sense(dev, ccb);

 } else if (et == 132 ||
     ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_SCSI_STATUS_ERROR &&
      (ccb->ccb_h.flags & CAM_DIS_AUTOSENSE) == 0)) {
  ch->hold[slot->slot] = ccb;
  ch->holdtag[slot->slot] = slot->tag;
  ch->numhslots++;
 } else
  xpt_done(ccb);

 if (ch->rslots == 0) {

  if (ch->toslots != 0 || ch->fatalerr) {
   mvs_reset(dev);
  } else {

   if (ch->eslots != 0) {
    mvs_set_edma_mode(dev, MVS_EDMA_OFF);
    ch->eslots = 0;
   }

   if (!ch->recoverycmd && ch->numhslots)
    mvs_issue_recovery(dev);
  }

 } else if ((ch->rslots & ~ch->toslots) == 0 &&
     et != 128)
  mvs_rearm_timeout(dev);

 if (ch->frozen && !mvs_check_collision(dev, ch->frozen)) {
  union ccb *fccb = ch->frozen;
  ch->frozen = ((void*)0);
  mvs_begin_transaction(dev, fccb);
  xpt_release_simq(ch->sim, TRUE);
 }

 if (ch->numrslots == 0 && ch->pm_level > 3 &&
     (ch->curr[ch->pm_present ? 15 : 0].caps & CTS_SATA_CAPS_D_PMREQ)) {
  callout_schedule(&ch->pm_timer,
      (ch->pm_level == 4) ? hz / 1000 : hz / 8);
 }
}
