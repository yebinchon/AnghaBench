
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ func_code; size_t target_id; int flags; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
union ccb {TYPE_4__ ccb_h; TYPE_3__ ataio; } ;
struct TYPE_12__ {int data_map; scalar_t__ nsegs; } ;
struct siis_slot {int slot; TYPE_6__ dma; int state; union ccb* ccb; } ;
struct TYPE_11__ {int data_tag; } ;
struct siis_channel {int oslots; int aslots; TYPE_5__ dma; int * numtslots; int numrslots; struct siis_slot* slot; TYPE_1__* curr; int mtx; } ;
typedef int device_t ;
struct TYPE_7__ {int tags; } ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int MA_OWNED ;
 int SIIS_MAX_SLOTS ;
 int SIIS_SLOT_LOADING ;
 scalar_t__ XPT_ATA_IO ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct siis_slot*,int ) ;
 struct siis_channel* device_get_softc (int ) ;
 int fls (int) ;
 int mtx_assert (int *,int ) ;
 int siis_dmasetprd ;
 int siis_execute_transaction (struct siis_slot*) ;

__attribute__((used)) static void
siis_begin_transaction(device_t dev, union ccb *ccb)
{
 struct siis_channel *ch = device_get_softc(dev);
 struct siis_slot *slot;
 int tag, tags;

 mtx_assert(&ch->mtx, MA_OWNED);

 tags = SIIS_MAX_SLOTS;
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA))
  tags = ch->curr[ccb->ccb_h.target_id].tags;
 tag = fls((~ch->oslots) & (0x7fffffff >> (31 - tags))) - 1;

 slot = &ch->slot[tag];
 slot->ccb = ccb;

 ch->oslots |= (1 << slot->slot);
 ch->numrslots++;
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)) {
  ch->numtslots[ccb->ccb_h.target_id]++;
 }
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & (CAM_ATAIO_CONTROL | CAM_ATAIO_NEEDRESULT)))
  ch->aslots |= (1 << slot->slot);
 slot->dma.nsegs = 0;

 if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
  slot->state = SIIS_SLOT_LOADING;
  bus_dmamap_load_ccb(ch->dma.data_tag, slot->dma.data_map,
      ccb, siis_dmasetprd, slot, 0);
 } else
  siis_execute_transaction(slot);
}
