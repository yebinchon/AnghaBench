
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int status; int path; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef int uint32_t ;
typedef int timeout_t ;
struct ahci_slot {scalar_t__ state; int slot; TYPE_2__* ccb; int timeout; struct ahci_channel* ch; } ;
struct ahci_channel {int wrongccs; int rslots; int fatalerr; int numslots; int toslots; int sim; TYPE_4__* slot; scalar_t__ fbs_enabled; union ccb* frozen; int r_mem; int dev; } ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_5__ {int timeout; int target_id; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;


 int AHCI_ERR_INNOCENT ;
 int AHCI_ERR_TIMEOUT ;
 int AHCI_P_CI ;
 int AHCI_P_CMD ;
 int AHCI_P_CMD_CCS_MASK ;
 int AHCI_P_CMD_CCS_SHIFT ;
 int AHCI_P_IS ;
 int AHCI_P_SACT ;
 int AHCI_P_SERR ;
 int AHCI_P_TFD ;
 scalar_t__ AHCI_SLOT_EXECUTING ;
 scalar_t__ AHCI_SLOT_RUNNING ;
 int ATA_INL (int ,int ) ;
 int CAM_DEV_QFRZN ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int SBT_1MS ;
 int ahci_done (struct ahci_channel*,union ccb*) ;
 int ahci_end_transaction (TYPE_4__*,int ) ;
 int ahci_process_timeout (struct ahci_channel*) ;
 int callout_reset_sbt (int *,int,int ,int *,struct ahci_slot*,int ) ;
 int device_printf (int ,char*,int,...) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
ahci_timeout(struct ahci_slot *slot)
{
 struct ahci_channel *ch = slot->ch;
 device_t dev = ch->dev;
 uint32_t sstatus;
 int ccs;
 int i;


 if (slot->state < AHCI_SLOT_RUNNING)
  return;


 if (slot->state < AHCI_SLOT_EXECUTING) {

  sstatus = ATA_INL(ch->r_mem, AHCI_P_SACT);
  ccs = (ATA_INL(ch->r_mem, AHCI_P_CMD) & AHCI_P_CMD_CCS_MASK)
      >> AHCI_P_CMD_CCS_SHIFT;
  if ((sstatus & (1 << slot->slot)) != 0 || ccs == slot->slot ||
      ch->fbs_enabled || ch->wrongccs)
   slot->state = AHCI_SLOT_EXECUTING;
  else if ((ch->rslots & (1 << ccs)) == 0) {
   ch->wrongccs = 1;
   slot->state = AHCI_SLOT_EXECUTING;
  }

  callout_reset_sbt(&slot->timeout,
          SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
      (timeout_t*)ahci_timeout, slot, 0);
  return;
 }

 device_printf(dev, "Timeout on slot %d port %d\n",
     slot->slot, slot->ccb->ccb_h.target_id & 0x0f);
 device_printf(dev, "is %08x cs %08x ss %08x rs %08x tfd %02x "
     "serr %08x cmd %08x\n",
     ATA_INL(ch->r_mem, AHCI_P_IS), ATA_INL(ch->r_mem, AHCI_P_CI),
     ATA_INL(ch->r_mem, AHCI_P_SACT), ch->rslots,
     ATA_INL(ch->r_mem, AHCI_P_TFD), ATA_INL(ch->r_mem, AHCI_P_SERR),
     ATA_INL(ch->r_mem, AHCI_P_CMD));


 if (ch->frozen) {
  union ccb *fccb = ch->frozen;
  ch->frozen = ((void*)0);
  fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
  if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
   xpt_freeze_devq(fccb->ccb_h.path, 1);
   fccb->ccb_h.status |= CAM_DEV_QFRZN;
  }
  ahci_done(ch, fccb);
 }
 if (!ch->fbs_enabled && !ch->wrongccs) {

  ch->fatalerr = 1;

  ahci_end_transaction(&ch->slot[slot->slot], AHCI_ERR_TIMEOUT);

  for (i = 0; i < ch->numslots; i++) {

   if (ch->slot[i].state < AHCI_SLOT_RUNNING)
    continue;
   ahci_end_transaction(&ch->slot[i], AHCI_ERR_INNOCENT);
  }
 } else {

  if (ch->toslots == 0)
   xpt_freeze_simq(ch->sim, 1);
  ch->toslots |= (1 << slot->slot);
  if ((ch->rslots & ~ch->toslots) == 0)
   ahci_process_timeout(ch);
  else
   device_printf(dev, " ... waiting for slots %08x\n",
       ch->rslots & ~ch->toslots);
 }
}
