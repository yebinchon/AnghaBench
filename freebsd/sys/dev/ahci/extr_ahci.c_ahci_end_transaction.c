
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


struct TYPE_13__ {scalar_t__ func_code; int target_id; int flags; int status; scalar_t__ recovery_type; int path; } ;
struct TYPE_11__ {int flags; int control; } ;
struct ata_res {int status; int error; int lba_low; int lba_mid; int lba_high; int sector_count; void* sector_count_exp; void* lba_high_exp; void* lba_mid_exp; void* lba_low_exp; void* device; } ;
struct TYPE_12__ {void* dxfer_len; TYPE_4__ cmd; void* resid; struct ata_res res; } ;
struct TYPE_10__ {void* dxfer_len; int scsi_status; void* resid; } ;
union ccb {TYPE_6__ ccb_h; TYPE_5__ ataio; TYPE_3__ csio; } ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef void* u_int8_t ;
struct TYPE_9__ {int data_map; } ;
struct ahci_slot {int slot; union ccb* ccb; int state; TYPE_2__ dma; struct ahci_channel* ch; } ;
struct ahci_cmd_list {int bytecount; } ;
struct TYPE_8__ {void** rfis; int data_tag; int rfis_map; int rfis_tag; scalar_t__ work; int work_map; int work_tag; } ;
struct ahci_channel {int quirks; int eslots; int fatalerr; int oslots; int rslots; int aslots; scalar_t__ numrslots; int toslots; int pm_level; int pm_timer; scalar_t__ pm_present; TYPE_7__* curr; int sim; union ccb* frozen; scalar_t__ numhslots; int recoverycmd; union ccb** hold; int * numtslotspd; int numtslots; int * numrslotspd; TYPE_1__ dma; int r_mem; scalar_t__ fbs_enabled; } ;
typedef enum ahci_err_type { ____Placeholder_ahci_err_type } ahci_err_type ;
struct TYPE_14__ {int caps; } ;


 scalar_t__ AHCI_CL_OFFSET ;
 int AHCI_CL_SIZE ;







 int AHCI_P_SIG ;
 int AHCI_P_TFD ;
 int AHCI_Q_ALTSIG ;
 int AHCI_Q_NOCOUNT ;
 int AHCI_SLOT_EMPTY ;
 int ATA_A_RESET ;
 int ATA_INL (int ,int ) ;
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
 scalar_t__ RECOVERY_READ_LOG ;
 scalar_t__ RECOVERY_REQUEST_SENSE ;
 int SCSI_STATUS_CHECK_COND ;
 int SCSI_STATUS_OK ;
 int TRUE ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int ahci_begin_transaction (struct ahci_channel*,union ccb*) ;
 int ahci_check_collision (struct ahci_channel*,union ccb*) ;
 int ahci_clo (struct ahci_channel*) ;
 int ahci_done (struct ahci_channel*,union ccb*) ;
 int ahci_issue_recovery (struct ahci_channel*) ;
 int ahci_process_read_log (struct ahci_channel*,union ccb*) ;
 int ahci_process_request_sense (struct ahci_channel*,union ccb*) ;
 int ahci_rearm_timeout (struct ahci_channel*) ;
 int ahci_reset (struct ahci_channel*) ;
 int ahci_start (struct ahci_channel*,int) ;
 int ahci_stop (struct ahci_channel*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (struct ata_res*,int) ;
 int callout_schedule (int *,int) ;
 int hz ;
 void* le32toh (int ) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
ahci_end_transaction(struct ahci_slot *slot, enum ahci_err_type et)
{
 struct ahci_channel *ch = slot->ch;
 union ccb *ccb = slot->ccb;
 struct ahci_cmd_list *clp;
 int lastto;
 uint32_t sig;

 bus_dmamap_sync(ch->dma.work_tag, ch->dma.work_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 clp = (struct ahci_cmd_list *)
     (ch->dma.work + AHCI_CL_OFFSET + (AHCI_CL_SIZE * slot->slot));




 if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  struct ata_res *res = &ccb->ataio.res;

  if ((et == 129) ||
      (ccb->ataio.cmd.flags & CAM_ATAIO_NEEDRESULT)) {
   u_int8_t *fis = ch->dma.rfis + 0x40;

   bus_dmamap_sync(ch->dma.rfis_tag, ch->dma.rfis_map,
       BUS_DMASYNC_POSTREAD);
   if (ch->fbs_enabled) {
    fis += ccb->ccb_h.target_id * 256;
    res->status = fis[2];
    res->error = fis[3];
   } else {
    uint16_t tfd = ATA_INL(ch->r_mem, AHCI_P_TFD);

    res->status = tfd;
    res->error = tfd >> 8;
   }
   res->lba_low = fis[4];
   res->lba_mid = fis[5];
   res->lba_high = fis[6];
   res->device = fis[7];
   res->lba_low_exp = fis[8];
   res->lba_mid_exp = fis[9];
   res->lba_high_exp = fis[10];
   res->sector_count = fis[12];
   res->sector_count_exp = fis[13];





   if ((ch->quirks & AHCI_Q_ALTSIG) &&
       (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) &&
       (ccb->ataio.cmd.control & ATA_A_RESET) == 0) {
    sig = ATA_INL(ch->r_mem, AHCI_P_SIG);
    res->lba_high = sig >> 24;
    res->lba_mid = sig >> 16;
    res->lba_low = sig >> 8;
    res->sector_count = sig;
   }
  } else
   bzero(res, sizeof(*res));
  if ((ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA) == 0 &&
      (ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE &&
      (ch->quirks & AHCI_Q_NOCOUNT) == 0) {
   ccb->ataio.resid =
       ccb->ataio.dxfer_len - le32toh(clp->bytecount);
  }
 } else {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE &&
      (ch->quirks & AHCI_Q_NOCOUNT) == 0) {
   ccb->csio.resid =
       ccb->csio.dxfer_len - le32toh(clp->bytecount);
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
 slot->state = AHCI_SLOT_EMPTY;
 slot->ccb = ((void*)0);

 ch->numrslots--;
 ch->numrslotspd[ccb->ccb_h.target_id]--;
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
  ahci_begin_transaction(ch, ccb);
  return;
 }

 if (ccb->ccb_h.recovery_type == RECOVERY_READ_LOG) {
  ahci_process_read_log(ch, ccb);

 } else if (ccb->ccb_h.recovery_type == RECOVERY_REQUEST_SENSE) {
  ahci_process_request_sense(ch, ccb);

 } else if (et == 132 ||
     ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_SCSI_STATUS_ERROR &&
      (ccb->ccb_h.flags & CAM_DIS_AUTOSENSE) == 0)) {
  ch->hold[slot->slot] = ccb;
  ch->numhslots++;
 } else
  ahci_done(ch, ccb);

 if (ch->rslots == 0) {

  if (ch->toslots != 0 || ch->fatalerr) {
   ahci_reset(ch);
  } else {

   if (ch->eslots != 0) {
    ahci_stop(ch);
    ahci_clo(ch);
    ahci_start(ch, 1);
   }

   if (!ch->recoverycmd && ch->numhslots)
    ahci_issue_recovery(ch);
  }

 } else if ((ch->rslots & ~ch->toslots) == 0 &&
     et != 128)
  ahci_rearm_timeout(ch);

 if (ch->frozen && !ahci_check_collision(ch, ch->frozen)) {
  union ccb *fccb = ch->frozen;
  ch->frozen = ((void*)0);
  ahci_begin_transaction(ch, fccb);
  xpt_release_simq(ch->sim, TRUE);
 }

 if (ch->numrslots == 0 && ch->pm_level > 3 &&
     (ch->curr[ch->pm_present ? 15 : 0].caps & CTS_SATA_CAPS_D_PMREQ)) {
  callout_schedule(&ch->pm_timer,
      (ch->pm_level == 4) ? hz / 1000 : hz / 8);
 }
}
