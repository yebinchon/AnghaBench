#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int nsegs; int /*<<< orphan*/  data_map; } ;
struct siis_slot {int slot; TYPE_7__* ccb; TYPE_5__ dma; int /*<<< orphan*/  dev; } ;
struct siis_dma_prd {void* control; void* dbc; int /*<<< orphan*/  dba; } ;
struct TYPE_11__ {struct siis_dma_prd* prd; } ;
struct TYPE_10__ {struct siis_dma_prd* prd; } ;
struct TYPE_12__ {TYPE_2__ atapi; TYPE_1__ ata; } ;
struct siis_cmd {TYPE_3__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  data_tag; scalar_t__ work; } ;
struct siis_channel {TYPE_4__ dma; int /*<<< orphan*/  sim; int /*<<< orphan*/  recoverycmd; int /*<<< orphan*/  mtx; } ;
struct TYPE_17__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_8__ bus_dma_segment_t ;
struct TYPE_15__ {scalar_t__ func_code; int flags; } ;
struct TYPE_16__ {TYPE_6__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CAM_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ SIIS_CT_OFFSET ; 
 int SIIS_CT_SIZE ; 
 int /*<<< orphan*/  SIIS_ERR_INVALID ; 
 int /*<<< orphan*/  SIIS_PRD_TRM ; 
 int SIIS_SG_ENTRIES ; 
 scalar_t__ XPT_ATA_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct siis_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct siis_slot*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{    
	struct siis_slot *slot = arg;
	struct siis_channel *ch = FUNC2(slot->dev);
	struct siis_cmd *ctp;
	struct siis_dma_prd *prd;
	int i;

	FUNC6(&ch->mtx, MA_OWNED);
	if (error) {
		FUNC3(slot->dev, "DMA load error\n");
		if (!ch->recoverycmd)
			FUNC9(ch->sim, 1);
		FUNC7(slot, SIIS_ERR_INVALID);
		return;
	}
	FUNC0(nsegs <= SIIS_SG_ENTRIES, ("too many DMA segment entries\n"));
	slot->dma.nsegs = nsegs;
	if (nsegs != 0) {
		/* Get a piece of the workspace for this request */
		ctp = (struct siis_cmd *)(ch->dma.work + SIIS_CT_OFFSET +
		    (SIIS_CT_SIZE * slot->slot));
		/* Fill S/G table */
		if (slot->ccb->ccb_h.func_code == XPT_ATA_IO) 
			prd = &ctp->u.ata.prd[0];
		else
			prd = &ctp->u.atapi.prd[0];
		for (i = 0; i < nsegs; i++) {
			prd[i].dba = FUNC5(segs[i].ds_addr);
			prd[i].dbc = FUNC4(segs[i].ds_len);
			prd[i].control = 0;
		}
			prd[nsegs - 1].control = FUNC4(SIIS_PRD_TRM);
		FUNC1(ch->dma.data_tag, slot->dma.data_map,
		    ((slot->ccb->ccb_h.flags & CAM_DIR_IN) ?
		    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
	}
	FUNC8(slot);
}