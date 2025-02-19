
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int target_id; scalar_t__ func_code; int timeout; int path; } ;
struct TYPE_8__ {int flags; int control; scalar_t__ command; } ;
struct TYPE_9__ {TYPE_3__ cmd; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ ataio; } ;
typedef int uint32_t ;
typedef int timeout_t ;
struct TYPE_6__ {int nsegs; } ;
struct fsl_sata_slot {int slot; int ttl; int timeout; int state; TYPE_1__ dma; union ccb* ccb; struct fsl_sata_channel* ch; } ;
struct fsl_sata_cmd_tab {int* sfis; } ;
struct fsl_sata_cmd_list {void* cda; void* ttl; void* cmd_flags; void* prd_length; void* fis_length; } ;
struct TYPE_7__ {int work_map; int work_tag; } ;
struct fsl_sata_channel {int rslots; int r_mem; int dev; TYPE_2__ dma; } ;
typedef enum fsl_sata_err_type { ____Placeholder_fsl_sata_err_type } fsl_sata_err_type ;


 int ATA_A_RESET ;
 scalar_t__ ATA_DEVICE_RESET ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int DELAY (int) ;
 struct fsl_sata_cmd_list* FSL_SATA_CLP (struct fsl_sata_channel*,struct fsl_sata_slot*) ;
 int FSL_SATA_CMD_ATAPI ;
 int FSL_SATA_CMD_QUEUED ;
 int FSL_SATA_CMD_RESET ;
 int FSL_SATA_CMD_SNOOP ;
 int FSL_SATA_CMD_WRITE ;
 struct fsl_sata_cmd_tab* FSL_SATA_CTP (struct fsl_sata_channel*,struct fsl_sata_slot*) ;
 int FSL_SATA_CTP_BUS (struct fsl_sata_channel*,struct fsl_sata_slot*) ;
 int FSL_SATA_ERR_INVALID ;
 int FSL_SATA_ERR_NONE ;
 int FSL_SATA_ERR_TIMEOUT ;
 int FSL_SATA_P_CAR ;
 int FSL_SATA_P_CCR ;
 int FSL_SATA_P_CER ;
 int FSL_SATA_P_CQPMP ;
 int FSL_SATA_P_CQR ;
 int FSL_SATA_P_DER ;
 int FSL_SATA_P_HSTS ;
 int FSL_SATA_P_SERR ;
 int FSL_SATA_P_SIG ;
 int FSL_SATA_P_SSTS ;
 int FSL_SATA_SLOT_RUNNING ;
 int SBT_1MS ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int bus_dmamap_sync (int ,int ,int) ;
 int callout_reset_sbt (int *,int,int ,int *,struct fsl_sata_slot*,int ) ;
 int device_printf (int ,char*,...) ;
 int fsl_sata_end_transaction (struct fsl_sata_slot*,int) ;
 int fsl_sata_setup_fis (struct fsl_sata_channel*,struct fsl_sata_cmd_tab*,union ccb*,int) ;
 scalar_t__ fsl_sata_timeout ;
 void* htole16 (int) ;
 void* htole32 (int) ;

__attribute__((used)) static void
fsl_sata_execute_transaction(struct fsl_sata_slot *slot)
{
 struct fsl_sata_channel *ch = slot->ch;
 struct fsl_sata_cmd_tab *ctp;
 struct fsl_sata_cmd_list *clp;
 union ccb *ccb = slot->ccb;
 int port = ccb->ccb_h.target_id & 0x0f;
 int fis_size, i, softreset;
 uint32_t tmp;
 uint32_t cmd_flags = FSL_SATA_CMD_WRITE | FSL_SATA_CMD_SNOOP;

 softreset = 0;
 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("fsl_sata_execute_transaction func_code=0x%x\n", ccb->ccb_h.func_code));

 ctp = FSL_SATA_CTP(ch, slot);

 if (!(fis_size = fsl_sata_setup_fis(ch, ctp, ccb, slot->slot))) {
  device_printf(ch->dev, "Setting up SATA FIS failed\n");
  fsl_sata_end_transaction(slot, FSL_SATA_ERR_INVALID);
  return;
 }

 clp = FSL_SATA_CLP(ch, slot);
 clp->fis_length = htole16(fis_size);
 clp->prd_length = htole16(slot->dma.nsegs);

 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL)) {
  if (ccb->ataio.cmd.control & ATA_A_RESET) {
   softreset = 1;
   cmd_flags |= FSL_SATA_CMD_RESET;
  } else {

   for (i = 0; i < 32; i++)
    ctp->sfis[i] = 0xff;
   softreset = 2;
  }
 }
 if (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)
  cmd_flags |= FSL_SATA_CMD_QUEUED;
 clp->cmd_flags = htole32(cmd_flags |
     (ccb->ccb_h.func_code == XPT_SCSI_IO ? FSL_SATA_CMD_ATAPI : 0) |
     slot->slot);
 clp->ttl = htole32(slot->ttl);
 clp->cda = htole32(FSL_SATA_CTP_BUS(ch, slot));
 bus_dmamap_sync(ch->dma.work_tag, ch->dma.work_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 slot->state = FSL_SATA_SLOT_RUNNING;
 ch->rslots |= (1 << slot->slot);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_CQPMP, port);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_CQR, (1 << slot->slot));

 if (ccb->ccb_h.func_code == XPT_ATA_IO &&
     (ccb->ataio.cmd.command == ATA_DEVICE_RESET || softreset)) {
  int count, timeout = ccb->ccb_h.timeout * 100;
  enum fsl_sata_err_type et = FSL_SATA_ERR_NONE;

  for (count = 0; count < timeout; count++) {
   DELAY(10);
   tmp = 0;
   if (softreset == 2) {
    tmp = ATA_INL(ch->r_mem, FSL_SATA_P_SIG);
    if (tmp != 0 && tmp != 0xffffffff)
     break;
    continue;
   }
   if ((ATA_INL(ch->r_mem, FSL_SATA_P_CCR) & (1 << slot->slot)) != 0)
    break;
  }

  if (timeout && (count >= timeout)) {
   device_printf(ch->dev, "Poll timeout on slot %d port %d (round %d)\n",
       slot->slot, port, softreset);
   device_printf(ch->dev, "hsts %08x cqr %08x ccr %08x ss %08x "
       "rs %08x cer %08x der %08x serr %08x car %08x sig %08x\n",
       ATA_INL(ch->r_mem, FSL_SATA_P_HSTS),
       ATA_INL(ch->r_mem, FSL_SATA_P_CQR),
       ATA_INL(ch->r_mem, FSL_SATA_P_CCR),
       ATA_INL(ch->r_mem, FSL_SATA_P_SSTS), ch->rslots,
       ATA_INL(ch->r_mem, FSL_SATA_P_CER),
       ATA_INL(ch->r_mem, FSL_SATA_P_DER),
       ATA_INL(ch->r_mem, FSL_SATA_P_SERR),
       ATA_INL(ch->r_mem, FSL_SATA_P_CAR),
       ATA_INL(ch->r_mem, FSL_SATA_P_SIG));
   et = FSL_SATA_ERR_TIMEOUT;
  }

  fsl_sata_end_transaction(slot, et);
  return;
 }

 callout_reset_sbt(&slot->timeout, SBT_1MS * ccb->ccb_h.timeout / 2,
     0, (timeout_t*)fsl_sata_timeout, slot, 0);
 return;
}
