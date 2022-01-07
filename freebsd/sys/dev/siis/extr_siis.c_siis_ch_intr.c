
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct siis_channel {int rslots; int recovery; int* numtslots; TYPE_4__* slot; int r_mem; int recoverycmd; union ccb* frozen; int numrslots; int sim; int mtx; } ;
typedef enum siis_err_type { ____Placeholder_siis_err_type } siis_err_type ;
typedef int device_t ;
struct TYPE_8__ {TYPE_3__* ccb; } ;
struct TYPE_6__ {int target_id; } ;
struct TYPE_7__ {TYPE_2__ ccb_h; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int CAM_DEV_QFRZN ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int CAM_STATUS_MASK ;
 int MA_OWNED ;
 int SIIS_ERR_INNOCENT ;
 int SIIS_ERR_INVALID ;
 int SIIS_ERR_NCQ ;
 int SIIS_ERR_NONE ;
 int SIIS_ERR_SATA ;
 int SIIS_ERR_TFE ;
 int SIIS_MAX_SLOTS ;
 int SIIS_P_CMDERR ;
 int SIIS_P_CMDERR_DATAFIS ;
 int SIIS_P_CMDERR_DEV ;
 int SIIS_P_CMDERR_INCSTATE ;
 int SIIS_P_CMDERR_PPE ;
 int SIIS_P_CMDERR_SDB ;
 int SIIS_P_CMDERR_SENDFIS ;
 int SIIS_P_CMDERR_SERVICE ;
 int SIIS_P_CTLSET ;
 int SIIS_P_CTL_RESUME ;
 int SIIS_P_CTX ;
 int SIIS_P_CTX_PMP ;
 int SIIS_P_CTX_PMP_SHIFT ;
 int SIIS_P_CTX_SLOT ;
 int SIIS_P_CTX_SLOT_SHIFT ;
 int SIIS_P_IS ;
 int SIIS_P_IX_COMMCOMP ;
 int SIIS_P_IX_COMMERR ;
 int SIIS_P_IX_PHYRDYCHG ;
 int SIIS_P_IX_SDBN ;
 int SIIS_P_SS ;
 int SIIS_P_SS_ATTN ;
 struct siis_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;
 int siis_end_transaction (TYPE_4__*,int) ;
 int siis_notify_events (int ) ;
 int siis_phy_check_events (int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int ) ;

__attribute__((used)) static void
siis_ch_intr(void *data)
{
 device_t dev = (device_t)data;
 struct siis_channel *ch = device_get_softc(dev);
 uint32_t istatus, sstatus, ctx, estatus, ok, err = 0;
 enum siis_err_type et;
 int i, ccs, port, tslots;

 mtx_assert(&ch->mtx, MA_OWNED);

 sstatus = ATA_INL(ch->r_mem, SIIS_P_SS);
 ok = ch->rslots & ~sstatus;

 for (i = 0; i < SIIS_MAX_SLOTS; i++) {
  if ((ok >> i) & 1)
   siis_end_transaction(&ch->slot[i], SIIS_ERR_NONE);
 }

 if ((sstatus & SIIS_P_SS_ATTN) == 0)
  return;

 istatus = ATA_INL(ch->r_mem, SIIS_P_IS) &
     (0xFFFF & ~SIIS_P_IX_COMMCOMP);
 ATA_OUTL(ch->r_mem, SIIS_P_IS, istatus);

 if (istatus & SIIS_P_IX_PHYRDYCHG)
  siis_phy_check_events(dev);

 if (istatus & SIIS_P_IX_SDBN)
  siis_notify_events(dev);

 if (istatus & SIIS_P_IX_COMMERR) {
  estatus = ATA_INL(ch->r_mem, SIIS_P_CMDERR);
  ctx = ATA_INL(ch->r_mem, SIIS_P_CTX);
  ccs = (ctx & SIIS_P_CTX_SLOT) >> SIIS_P_CTX_SLOT_SHIFT;
  port = (ctx & SIIS_P_CTX_PMP) >> SIIS_P_CTX_PMP_SHIFT;
  err = ch->rslots & sstatus;




  if (!ch->recoverycmd && !ch->recovery) {
   xpt_freeze_simq(ch->sim, ch->numrslots);
   ch->recovery = 1;
  }
  if (ch->frozen) {
   union ccb *fccb = ch->frozen;
   ch->frozen = ((void*)0);
   fccb->ccb_h.status &= ~CAM_STATUS_MASK;
   fccb->ccb_h.status |= CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
   if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
    xpt_freeze_devq(fccb->ccb_h.path, 1);
    fccb->ccb_h.status |= CAM_DEV_QFRZN;
   }
   xpt_done(fccb);
  }
  if (estatus == SIIS_P_CMDERR_DEV ||
      estatus == SIIS_P_CMDERR_SDB ||
      estatus == SIIS_P_CMDERR_DATAFIS) {
   tslots = ch->numtslots[port];
   for (i = 0; i < SIIS_MAX_SLOTS; i++) {

    if (((ch->rslots >> i) & 1) == 0)
     continue;
    if (ch->slot[i].ccb->ccb_h.target_id != port)
     continue;
    if (tslots == 0) {

     if (i == ccs)
      et = SIIS_ERR_TFE;
     else
      et = SIIS_ERR_INNOCENT;
    } else {

     et = SIIS_ERR_NCQ;
    }
    siis_end_transaction(&ch->slot[i], et);
   }




   if (ch->rslots != 0 && !ch->recoverycmd)
    ATA_OUTL(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_RESUME);
  } else {
   if (estatus == SIIS_P_CMDERR_SENDFIS ||
       estatus == SIIS_P_CMDERR_INCSTATE ||
       estatus == SIIS_P_CMDERR_PPE ||
       estatus == SIIS_P_CMDERR_SERVICE) {
    et = SIIS_ERR_SATA;
   } else
    et = SIIS_ERR_INVALID;
   for (i = 0; i < SIIS_MAX_SLOTS; i++) {

    if (((ch->rslots >> i) & 1) == 0)
     continue;
    siis_end_transaction(&ch->slot[i], et);
   }
  }
 }
}
