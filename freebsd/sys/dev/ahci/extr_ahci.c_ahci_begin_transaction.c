
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
struct TYPE_12__ {scalar_t__ nsegs; int data_map; } ;
struct ahci_slot {TYPE_6__ dma; int state; union ccb* ccb; } ;
struct TYPE_11__ {int data_tag; } ;
struct ahci_channel {int numslots; int lastslot; int oslots; scalar_t__ numrslots; int pm_level; size_t taggedtarget; int aslots; TYPE_5__ dma; int * numtslotspd; int numtslots; int * numrslotspd; int pm_timer; struct ahci_slot* slot; TYPE_1__* curr; } ;
struct TYPE_7__ {int tags; } ;


 int AHCI_SLOT_LOADING ;
 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 scalar_t__ XPT_ATA_IO ;
 int ahci_dmasetprd ;
 int ahci_execute_transaction (struct ahci_slot*) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct ahci_slot*,int ) ;
 int callout_stop (int *) ;
 int ffs (int) ;

__attribute__((used)) static void
ahci_begin_transaction(struct ahci_channel *ch, union ccb *ccb)
{
 struct ahci_slot *slot;
 int tag, tags;


 tags = ch->numslots;
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA))
  tags = ch->curr[ccb->ccb_h.target_id].tags;
 if (ch->lastslot + 1 < tags)
  tag = ffs(~(ch->oslots >> (ch->lastslot + 1)));
 else
  tag = 0;
 if (tag == 0 || tag + ch->lastslot >= tags)
  tag = ffs(~ch->oslots) - 1;
 else
  tag += ch->lastslot;
 ch->lastslot = tag;

 slot = &ch->slot[tag];
 slot->ccb = ccb;

 if (ch->numrslots == 0 && ch->pm_level > 3)
  callout_stop(&ch->pm_timer);

 ch->oslots |= (1 << tag);
 ch->numrslots++;
 ch->numrslotspd[ccb->ccb_h.target_id]++;
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)) {
  ch->numtslots++;
  ch->numtslotspd[ccb->ccb_h.target_id]++;
  ch->taggedtarget = ccb->ccb_h.target_id;
 }
 if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
     (ccb->ataio.cmd.flags & (CAM_ATAIO_CONTROL | CAM_ATAIO_NEEDRESULT)))
  ch->aslots |= (1 << tag);
 if ((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
  slot->state = AHCI_SLOT_LOADING;
  bus_dmamap_load_ccb(ch->dma.data_tag, slot->dma.data_map, ccb,
      ahci_dmasetprd, slot, 0);
 } else {
  slot->dma.nsegs = 0;
  ahci_execute_transaction(slot);
 }
}
