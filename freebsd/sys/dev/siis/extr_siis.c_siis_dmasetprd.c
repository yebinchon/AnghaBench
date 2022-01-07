
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int nsegs; int data_map; } ;
struct siis_slot {int slot; TYPE_7__* ccb; TYPE_5__ dma; int dev; } ;
struct siis_dma_prd {void* control; void* dbc; int dba; } ;
struct TYPE_11__ {struct siis_dma_prd* prd; } ;
struct TYPE_10__ {struct siis_dma_prd* prd; } ;
struct TYPE_12__ {TYPE_2__ atapi; TYPE_1__ ata; } ;
struct siis_cmd {TYPE_3__ u; } ;
struct TYPE_13__ {int data_tag; scalar_t__ work; } ;
struct siis_channel {TYPE_4__ dma; int sim; int recoverycmd; int mtx; } ;
struct TYPE_17__ {int ds_len; int ds_addr; } ;
typedef TYPE_8__ bus_dma_segment_t ;
struct TYPE_15__ {scalar_t__ func_code; int flags; } ;
struct TYPE_16__ {TYPE_6__ ccb_h; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_DIR_IN ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ SIIS_CT_OFFSET ;
 int SIIS_CT_SIZE ;
 int SIIS_ERR_INVALID ;
 int SIIS_PRD_TRM ;
 int SIIS_SG_ENTRIES ;
 scalar_t__ XPT_ATA_IO ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 void* htole32 (int ) ;
 int htole64 (int ) ;
 int mtx_assert (int *,int ) ;
 int siis_end_transaction (struct siis_slot*,int ) ;
 int siis_execute_transaction (struct siis_slot*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
siis_dmasetprd(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct siis_slot *slot = arg;
 struct siis_channel *ch = device_get_softc(slot->dev);
 struct siis_cmd *ctp;
 struct siis_dma_prd *prd;
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 if (error) {
  device_printf(slot->dev, "DMA load error\n");
  if (!ch->recoverycmd)
   xpt_freeze_simq(ch->sim, 1);
  siis_end_transaction(slot, SIIS_ERR_INVALID);
  return;
 }
 KASSERT(nsegs <= SIIS_SG_ENTRIES, ("too many DMA segment entries\n"));
 slot->dma.nsegs = nsegs;
 if (nsegs != 0) {

  ctp = (struct siis_cmd *)(ch->dma.work + SIIS_CT_OFFSET +
      (SIIS_CT_SIZE * slot->slot));

  if (slot->ccb->ccb_h.func_code == XPT_ATA_IO)
   prd = &ctp->u.ata.prd[0];
  else
   prd = &ctp->u.atapi.prd[0];
  for (i = 0; i < nsegs; i++) {
   prd[i].dba = htole64(segs[i].ds_addr);
   prd[i].dbc = htole32(segs[i].ds_len);
   prd[i].control = 0;
  }
   prd[nsegs - 1].control = htole32(SIIS_PRD_TRM);
  bus_dmamap_sync(ch->dma.data_tag, slot->dma.data_map,
      ((slot->ccb->ccb_h.flags & CAM_DIR_IN) ?
      BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
 }
 siis_execute_transaction(slot);
}
