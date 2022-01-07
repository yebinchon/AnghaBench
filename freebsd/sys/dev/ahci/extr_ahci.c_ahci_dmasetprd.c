
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nsegs; int data_map; } ;
struct ahci_slot {int slot; TYPE_4__* ccb; TYPE_2__ dma; struct ahci_channel* ch; } ;
struct ahci_dma_prd {int dbc; int dba; } ;
struct ahci_cmd_tab {struct ahci_dma_prd* prd_tab; } ;
struct TYPE_7__ {int data_tag; scalar_t__ work; } ;
struct ahci_channel {TYPE_1__ dma; int dev; } ;
struct TYPE_11__ {int ds_len; int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ ccb_h; } ;


 scalar_t__ AHCI_CT_OFFSET ;
 int AHCI_CT_SIZE ;
 int AHCI_ERR_INVALID ;
 int AHCI_PRD_MASK ;
 int AHCI_SG_ENTRIES ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_DIR_IN ;
 int KASSERT (int,char*) ;
 int ahci_end_transaction (struct ahci_slot*,int ) ;
 int ahci_execute_transaction (struct ahci_slot*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int htole32 (int) ;
 int htole64 (int ) ;

__attribute__((used)) static void
ahci_dmasetprd(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct ahci_slot *slot = arg;
 struct ahci_channel *ch = slot->ch;
 struct ahci_cmd_tab *ctp;
 struct ahci_dma_prd *prd;
 int i;

 if (error) {
  device_printf(ch->dev, "DMA load error\n");
  ahci_end_transaction(slot, AHCI_ERR_INVALID);
  return;
 }
 KASSERT(nsegs <= AHCI_SG_ENTRIES, ("too many DMA segment entries\n"));

 ctp = (struct ahci_cmd_tab *)
  (ch->dma.work + AHCI_CT_OFFSET + (AHCI_CT_SIZE * slot->slot));

 prd = &ctp->prd_tab[0];
 for (i = 0; i < nsegs; i++) {
  prd[i].dba = htole64(segs[i].ds_addr);
  prd[i].dbc = htole32((segs[i].ds_len - 1) & AHCI_PRD_MASK);
 }
 slot->dma.nsegs = nsegs;
 bus_dmamap_sync(ch->dma.data_tag, slot->dma.data_map,
     ((slot->ccb->ccb_h.flags & CAM_DIR_IN) ?
     BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
 ahci_execute_transaction(slot);
}
