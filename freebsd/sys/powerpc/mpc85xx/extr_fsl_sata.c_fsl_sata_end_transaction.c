
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


struct TYPE_12__ {scalar_t__ func_code; int flags; int status; size_t target_id; scalar_t__ recovery_type; int path; } ;
struct TYPE_10__ {int flags; int control; } ;
struct ata_res {int lba_low; int lba_mid; int lba_high; int sector_count; void* sector_count_exp; void* lba_high_exp; void* lba_mid_exp; void* lba_low_exp; void* device; void* error; void* status; } ;
struct TYPE_11__ {void* dxfer_len; TYPE_3__ cmd; void* resid; struct ata_res res; } ;
struct TYPE_9__ {void* dxfer_len; int scsi_status; void* resid; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ ataio; TYPE_2__ csio; } ;
typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int data_map; } ;
struct fsl_sata_slot {int slot; union ccb* ccb; int state; TYPE_1__ dma; struct fsl_sata_channel* ch; } ;
struct fsl_sata_cmd_tab {void** sfis; } ;
struct fsl_sata_cmd_list {int ttl; } ;
struct TYPE_14__ {int data_tag; int work_map; int work_tag; } ;
struct fsl_sata_channel {int eslots; int fatalerr; int oslots; int rslots; int aslots; scalar_t__ numrslots; int toslots; int pm_level; int pm_timer; scalar_t__ pm_present; TYPE_6__* curr; int sim; union ccb* frozen; scalar_t__ numhslots; int recoverycmd; union ccb** hold; int * numtslotspd; int numtslots; int r_mem; int * numrslotspd; TYPE_7__ dma; } ;
typedef enum fsl_sata_err_type { ____Placeholder_fsl_sata_err_type } fsl_sata_err_type ;
struct TYPE_13__ {int caps; } ;


 int ATA_A_RESET ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_ATAIO_CONTROL ;
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
 struct fsl_sata_cmd_list* FSL_SATA_CLP (struct fsl_sata_channel*,struct fsl_sata_slot*) ;
 struct fsl_sata_cmd_tab* FSL_SATA_CTP (struct fsl_sata_channel*,struct fsl_sata_slot*) ;







 int FSL_SATA_P_CCR ;
 int FSL_SATA_P_SIG ;
 int FSL_SATA_SLOT_EMPTY ;
 scalar_t__ RECOVERY_READ_LOG ;
 scalar_t__ RECOVERY_REQUEST_SENSE ;
 int SCSI_STATUS_CHECK_COND ;
 int SCSI_STATUS_OK ;
 int TRUE ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (struct ata_res*,int) ;
 int callout_schedule (int *,int) ;
 int fsl_sata_begin_transaction (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_check_collision (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_done (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_issue_recovery (struct fsl_sata_channel*) ;
 int fsl_sata_process_read_log (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_process_request_sense (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_rearm_timeout (struct fsl_sata_channel*) ;
 int fsl_sata_reset (struct fsl_sata_channel*) ;
 int fsl_sata_start (struct fsl_sata_channel*) ;
 int fsl_sata_stop (struct fsl_sata_channel*) ;
 int hz ;
 void* le32toh (int ) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
fsl_sata_end_transaction(struct fsl_sata_slot *slot, enum fsl_sata_err_type et)
{
 struct fsl_sata_channel *ch = slot->ch;
 union ccb *ccb = slot->ccb;
 struct fsl_sata_cmd_list *clp;
 int lastto;
 uint32_t sig;

 bus_dmamap_sync(ch->dma.work_tag, ch->dma.work_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 clp = FSL_SATA_CLP(ch, slot);

 if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  struct ata_res *res = &ccb->ataio.res;

  if ((et == 129) ||
      (ccb->ataio.cmd.flags & CAM_ATAIO_NEEDRESULT)) {
   struct fsl_sata_cmd_tab *ctp = FSL_SATA_CTP(ch, slot);
   uint8_t *fis = ctp->sfis;

   res->status = fis[2];
   res->error = fis[3];
   res->lba_low = fis[4];
   res->lba_mid = fis[5];
   res->lba_high = fis[6];
   res->device = fis[7];
   res->lba_low_exp = fis[8];
   res->lba_mid_exp = fis[9];
   res->lba_high_exp = fis[10];
   res->sector_count = fis[12];
   res->sector_count_exp = fis[13];

   if ((ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) &&
       (ccb->ataio.cmd.control & ATA_A_RESET) == 0) {
    sig = ATA_INL(ch->r_mem, FSL_SATA_P_SIG);
    res->lba_high = sig >> 24;
    res->lba_mid = sig >> 16;
    res->lba_low = sig >> 8;
    res->sector_count = sig;
   }
  } else
   bzero(res, sizeof(*res));
  if ((ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA) == 0 &&
      (ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
   ccb->ataio.resid =
       ccb->ataio.dxfer_len - le32toh(clp->ttl);
  }
 } else {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
   ccb->csio.resid =
       ccb->csio.dxfer_len - le32toh(clp->ttl);
  }
 }
 if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
  bus_dmamap_sync(ch->dma.data_tag, slot->dma.data_map,
      (ccb->ccb_h.flags & CAM_DIR_IN) ?
      BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ch->dma.data_tag, slot->dma.data_map);
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
 slot->state = FSL_SATA_SLOT_EMPTY;
 slot->ccb = ((void*)0);

 ch->numrslots--;
 ch->numrslotspd[ccb->ccb_h.target_id]--;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_CCR, 1 << slot->slot);
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)) {
  ch->numtslots--;
  ch->numtslotspd[ccb->ccb_h.target_id]--;
 }

 if (et != 128) {
  lastto = (ch->toslots == (1 << slot->slot));
  ch->toslots &= ~(1 << slot->slot);
  if (lastto)
   xpt_release_simq(ch->sim, TRUE);
 }


 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) &&
     (ccb->ataio.cmd.control & ATA_A_RESET) &&
     et == 131) {
  ccb->ataio.cmd.control &= ~ATA_A_RESET;
  fsl_sata_begin_transaction(ch, ccb);
  return;
 }

 if (ccb->ccb_h.recovery_type == RECOVERY_READ_LOG) {
  fsl_sata_process_read_log(ch, ccb);

 } else if (ccb->ccb_h.recovery_type == RECOVERY_REQUEST_SENSE) {
  fsl_sata_process_request_sense(ch, ccb);

 } else if (et == 132 ||
     ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_SCSI_STATUS_ERROR &&
      (ccb->ccb_h.flags & CAM_DIS_AUTOSENSE) == 0)) {
  ch->hold[slot->slot] = ccb;
  ch->numhslots++;
 } else
  fsl_sata_done(ch, ccb);

 if (ch->rslots == 0) {

  if (ch->toslots != 0 || ch->fatalerr) {
   fsl_sata_reset(ch);
  } else {

   if (ch->eslots != 0) {
    fsl_sata_stop(ch);
    fsl_sata_start(ch);
   }

   if (!ch->recoverycmd && ch->numhslots)
    fsl_sata_issue_recovery(ch);
  }

 } else if ((ch->rslots & ~ch->toslots) == 0 &&
     et != 128)
  fsl_sata_rearm_timeout(ch);

 if (ch->frozen && !fsl_sata_check_collision(ch, ch->frozen)) {
  union ccb *fccb = ch->frozen;
  ch->frozen = ((void*)0);
  fsl_sata_begin_transaction(ch, fccb);
  xpt_release_simq(ch->sim, TRUE);
 }

 if (ch->numrslots == 0 && ch->pm_level > 3 &&
     (ch->curr[ch->pm_present ? 15 : 0].caps & CTS_SATA_CAPS_D_PMREQ)) {
  callout_schedule(&ch->pm_timer,
      (ch->pm_level == 4) ? hz / 1000 : hz / 8);
 }
}
