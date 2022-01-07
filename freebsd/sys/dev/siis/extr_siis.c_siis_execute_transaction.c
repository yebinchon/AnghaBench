
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ func_code; int flags; int timeout; } ;
struct TYPE_5__ {int flags; int control; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
union ccb {TYPE_4__ ccb_h; TYPE_2__ ataio; } ;
typedef int u_int64_t ;
typedef int timeout_t ;
struct siis_slot {int slot; int timeout; int state; union ccb* ccb; int dev; } ;
struct siis_cmd {int control; int protocol_override; scalar_t__ transfer_count; } ;
struct TYPE_7__ {int work; int work_bus; int work_map; int work_tag; } ;
struct siis_channel {int rslots; int r_mem; TYPE_3__ dma; int sim; int recoverycmd; int dev; int mtx; } ;
typedef int device_t ;


 int ATA_A_RESET ;
 int ATA_OUTL (int ,int ,int) ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;
 int MA_OWNED ;
 int SBT_1MS ;
 int SIIS_CT_OFFSET ;
 int SIIS_CT_SIZE ;
 int SIIS_ERR_INVALID ;
 int SIIS_PRB_PACKET_READ ;
 int SIIS_PRB_PACKET_WRITE ;
 int SIIS_PRB_PROTOCOL_OVERRIDE ;
 int SIIS_PRB_PROTO_NCQ ;
 int SIIS_PRB_PROTO_READ ;
 int SIIS_PRB_PROTO_WRITE ;
 int SIIS_PRB_SOFT_RESET ;
 int SIIS_P_CACTH (int) ;
 int SIIS_P_CACTL (int) ;
 int SIIS_SLOT_RUNNING ;
 scalar_t__ XPT_ATA_IO ;
 scalar_t__ XPT_SCSI_IO ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int callout_reset_sbt (int *,int,int ,int *,struct siis_slot*,int ) ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int htole16 (int ) ;
 int mtx_assert (int *,int ) ;
 int siis_end_transaction (struct siis_slot*,int ) ;
 int siis_portinit (int ) ;
 int siis_setup_fis (int ,struct siis_cmd*,union ccb*,int) ;
 scalar_t__ siis_timeout ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
siis_execute_transaction(struct siis_slot *slot)
{
 device_t dev = slot->dev;
 struct siis_channel *ch = device_get_softc(dev);
 struct siis_cmd *ctp;
 union ccb *ccb = slot->ccb;
 u_int64_t prb_bus;

 mtx_assert(&ch->mtx, MA_OWNED);

 ctp = (struct siis_cmd *)
  (ch->dma.work + SIIS_CT_OFFSET + (SIIS_CT_SIZE * slot->slot));
 ctp->control = 0;
 ctp->protocol_override = 0;
 ctp->transfer_count = 0;

 if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  if (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) {
   ctp->control |= htole16(SIIS_PRB_SOFT_RESET);
  } else {
   ctp->control |= htole16(SIIS_PRB_PROTOCOL_OVERRIDE);
   if (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA) {
    ctp->protocol_override |=
        htole16(SIIS_PRB_PROTO_NCQ);
   }
   if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
    ctp->protocol_override |=
        htole16(SIIS_PRB_PROTO_READ);
   } else
   if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT) {
    ctp->protocol_override |=
        htole16(SIIS_PRB_PROTO_WRITE);
   }
  }
 } else if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN)
   ctp->control |= htole16(SIIS_PRB_PACKET_READ);
  else
  if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT)
   ctp->control |= htole16(SIIS_PRB_PACKET_WRITE);
 }

 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL) &&
     (ccb->ataio.cmd.control & ATA_A_RESET)) {

  siis_portinit(dev);
 }

 if (!siis_setup_fis(dev, ctp, ccb, slot->slot)) {
  device_printf(ch->dev, "Setting up SATA FIS failed\n");
  if (!ch->recoverycmd)
   xpt_freeze_simq(ch->sim, 1);
  siis_end_transaction(slot, SIIS_ERR_INVALID);
  return;
 }
 bus_dmamap_sync(ch->dma.work_tag, ch->dma.work_map,
     BUS_DMASYNC_PREWRITE);

 slot->state = SIIS_SLOT_RUNNING;
 ch->rslots |= (1 << slot->slot);
 prb_bus = ch->dma.work_bus +
       SIIS_CT_OFFSET + (SIIS_CT_SIZE * slot->slot);
 ATA_OUTL(ch->r_mem, SIIS_P_CACTL(slot->slot), prb_bus);
 ATA_OUTL(ch->r_mem, SIIS_P_CACTH(slot->slot), prb_bus >> 32);

 callout_reset_sbt(&slot->timeout, SBT_1MS * ccb->ccb_h.timeout, 0,
     (timeout_t*)siis_timeout, slot, 0);
 return;
}
