
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_1__ res; } ;
union ccb {TYPE_2__ ataio; } ;
typedef int uint32_t ;
typedef int uint16_t ;
struct mvs_crpb {int id; int rspflg; } ;
struct TYPE_7__ {int workrp_bus; int workrp_map; int workrp_tag; scalar_t__ workrp; } ;
struct mvs_channel {int in_idx; scalar_t__ numtslots; TYPE_3__ dma; int r_mem; int rslots; TYPE_4__* slot; } ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ state; union ccb* ccb; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int EDMA_IE_EDEVERR ;
 int EDMA_RESQIP ;
 int EDMA_RESQOP ;
 int EDMA_RESQP_ERPQP_MASK ;
 int EDMA_RESQP_ERPQP_SHIFT ;
 int MVS_CRPB_ATASTS_MASK ;
 int MVS_CRPB_ATASTS_SHIFT ;
 scalar_t__ MVS_CRPB_OFFSET ;
 int MVS_CRPB_SIZE ;
 int MVS_CRPB_TAG_MASK ;
 int MVS_ERR_NONE ;
 int MVS_MAX_SLOTS ;
 scalar_t__ MVS_SLOT_RUNNING ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int,...) ;
 int le16toh (int) ;
 int mvs_end_transaction (TYPE_4__*,int ) ;

__attribute__((used)) static void
mvs_crbq_intr(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 struct mvs_crpb *crpb;
 union ccb *ccb;
 int in_idx, fin_idx, cin_idx, slot;
 uint32_t val;
 uint16_t flags;

 val = ATA_INL(ch->r_mem, EDMA_RESQIP);
 if (val == 0)
  val = ATA_INL(ch->r_mem, EDMA_RESQIP);
 in_idx = (val & EDMA_RESQP_ERPQP_MASK) >>
     EDMA_RESQP_ERPQP_SHIFT;
 bus_dmamap_sync(ch->dma.workrp_tag, ch->dma.workrp_map,
     BUS_DMASYNC_POSTREAD);
 fin_idx = cin_idx = ch->in_idx;
 ch->in_idx = in_idx;
 while (in_idx != cin_idx) {
  crpb = (struct mvs_crpb *)
      (ch->dma.workrp + MVS_CRPB_OFFSET +
      (MVS_CRPB_SIZE * cin_idx));
  slot = le16toh(crpb->id) & MVS_CRPB_TAG_MASK;
  flags = le16toh(crpb->rspflg);





  if (crpb->id == 0xffff && crpb->rspflg == 0xffff) {
   device_printf(dev, "Unfilled CRPB "
       "%d (%d->%d) tag %d flags %04x rs %08x\n",
       cin_idx, fin_idx, in_idx, slot, flags, ch->rslots);
  } else

  if (ch->numtslots != 0 ||
      (flags & EDMA_IE_EDEVERR) == 0) {

   crpb->id = 0xffff;
   crpb->rspflg = 0xffff;

   if (ch->slot[slot].state >= MVS_SLOT_RUNNING) {
    ccb = ch->slot[slot].ccb;
    ccb->ataio.res.status =
        (flags & MVS_CRPB_ATASTS_MASK) >>
        MVS_CRPB_ATASTS_SHIFT;
    mvs_end_transaction(&ch->slot[slot], MVS_ERR_NONE);
   } else {
    device_printf(dev, "Unused tag in CRPB "
        "%d (%d->%d) tag %d flags %04x rs %08x\n",
        cin_idx, fin_idx, in_idx, slot, flags,
        ch->rslots);
   }
  } else {
   device_printf(dev,
       "CRPB with error %d tag %d flags %04x\n",
       cin_idx, slot, flags);
  }
  cin_idx = (cin_idx + 1) & (MVS_MAX_SLOTS - 1);
 }
 bus_dmamap_sync(ch->dma.workrp_tag, ch->dma.workrp_map,
     BUS_DMASYNC_PREREAD);
 if (cin_idx == ch->in_idx) {
  ATA_OUTL(ch->r_mem, EDMA_RESQOP,
      ch->dma.workrp_bus | (cin_idx << EDMA_RESQP_ERPQP_SHIFT));
 }
}
