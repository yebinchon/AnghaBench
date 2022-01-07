
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


struct TYPE_12__ {scalar_t__ func_code; size_t target_id; int flags; int path; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
union ccb {TYPE_6__ ccb_h; TYPE_3__ ataio; } ;
struct TYPE_11__ {scalar_t__ nsegs; int data_map; } ;
struct fsl_sata_slot {TYPE_5__ dma; int state; scalar_t__ ttl; union ccb* ccb; } ;
struct TYPE_10__ {int data_tag; } ;
struct fsl_sata_channel {int lastslot; int oslots; scalar_t__ numrslots; int pm_level; size_t taggedtarget; int aslots; TYPE_4__ dma; int * numtslotspd; int numtslots; int * numrslotspd; int pm_timer; struct fsl_sata_slot* slot; TYPE_1__* curr; } ;
struct TYPE_7__ {int tags; } ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_FPDMA ;
 int CAM_ATAIO_NEEDRESULT ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int FSL_SATA_MAX_SLOTS ;
 int FSL_SATA_SLOT_LOADING ;
 scalar_t__ XPT_ATA_IO ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct fsl_sata_slot*,int ) ;
 int callout_stop (int *) ;
 int ffs (int) ;
 int fsl_sata_dmasetprd ;
 int fsl_sata_execute_transaction (struct fsl_sata_slot*) ;

__attribute__((used)) static void
fsl_sata_begin_transaction(struct fsl_sata_channel *ch, union ccb *ccb)
{
 struct fsl_sata_slot *slot;
 int tag, tags;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("fsl_sata_begin_transaction func_code=0x%x\n", ccb->ccb_h.func_code));

 tags = FSL_SATA_MAX_SLOTS;
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
 slot->ttl = 0;

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
  slot->state = FSL_SATA_SLOT_LOADING;
  bus_dmamap_load_ccb(ch->dma.data_tag, slot->dma.data_map, ccb,
      fsl_sata_dmasetprd, slot, 0);
 } else {
  slot->dma.nsegs = 0;
  fsl_sata_execute_transaction(slot);
 }

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("fsl_sata_begin_transaction exit\n"));
}
