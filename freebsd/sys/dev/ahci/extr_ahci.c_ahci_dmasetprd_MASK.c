#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nsegs; int /*<<< orphan*/  data_map; } ;
struct ahci_slot {int slot; TYPE_4__* ccb; TYPE_2__ dma; struct ahci_channel* ch; } ;
struct ahci_dma_prd {int /*<<< orphan*/  dbc; int /*<<< orphan*/  dba; } ;
struct ahci_cmd_tab {struct ahci_dma_prd* prd_tab; } ;
struct TYPE_7__ {int /*<<< orphan*/  data_tag; scalar_t__ work; } ;
struct ahci_channel {TYPE_1__ dma; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ ccb_h; } ;

/* Variables and functions */
 scalar_t__ AHCI_CT_OFFSET ; 
 int AHCI_CT_SIZE ; 
 int /*<<< orphan*/  AHCI_ERR_INVALID ; 
 int AHCI_PRD_MASK ; 
 int AHCI_SG_ENTRIES ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CAM_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_slot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{    
	struct ahci_slot *slot = arg;
	struct ahci_channel *ch = slot->ch;
	struct ahci_cmd_tab *ctp;
	struct ahci_dma_prd *prd;
	int i;

	if (error) {
		FUNC4(ch->dev, "DMA load error\n");
		FUNC1(slot, AHCI_ERR_INVALID);
		return;
	}
	FUNC0(nsegs <= AHCI_SG_ENTRIES, ("too many DMA segment entries\n"));
	/* Get a piece of the workspace for this request */
	ctp = (struct ahci_cmd_tab *)
		(ch->dma.work + AHCI_CT_OFFSET + (AHCI_CT_SIZE * slot->slot));
	/* Fill S/G table */
	prd = &ctp->prd_tab[0];
	for (i = 0; i < nsegs; i++) {
		prd[i].dba = FUNC6(segs[i].ds_addr);
		prd[i].dbc = FUNC5((segs[i].ds_len - 1) & AHCI_PRD_MASK);
	}
	slot->dma.nsegs = nsegs;
	FUNC3(ch->dma.data_tag, slot->dma.data_map,
	    ((slot->ccb->ccb_h.flags & CAM_DIR_IN) ?
	    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
	FUNC2(slot);
}