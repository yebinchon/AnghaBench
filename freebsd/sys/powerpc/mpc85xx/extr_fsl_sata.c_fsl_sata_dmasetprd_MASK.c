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
typedef  int uint32_t ;
struct TYPE_8__ {int nsegs; int /*<<< orphan*/  data_map; } ;
struct fsl_sata_slot {int ttl; TYPE_4__* ccb; TYPE_2__ dma; struct fsl_sata_channel* ch; } ;
struct fsl_sata_dma_prd {void* dwc_flg; void* dba; } ;
struct fsl_sata_cmd_tab {struct fsl_sata_dma_prd* prd_tab; } ;
struct TYPE_7__ {int /*<<< orphan*/  data_tag; } ;
struct fsl_sata_channel {TYPE_1__ dma; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CAM_DIR_IN ; 
 struct fsl_sata_cmd_tab* FUNC0 (struct fsl_sata_channel*,struct fsl_sata_slot*) ; 
 int FUNC1 (struct fsl_sata_channel*,struct fsl_sata_slot*) ; 
 int /*<<< orphan*/  FSL_SATA_ERR_INVALID ; 
 int FSL_SATA_PRD_EXT ; 
 int FSL_SATA_PRD_EXT_INDEX ; 
 int FSL_SATA_PRD_MAX_DIRECT ; 
 int FUNC2 (int) ; 
 int FSL_SATA_PRD_SNOOP ; 
 int FSL_SATA_SG_ENTRIES ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_sata_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_sata_slot*) ; 
 void* FUNC8 (int) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static void
FUNC10(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{    
	struct fsl_sata_slot *slot = arg;
	struct fsl_sata_channel *ch = slot->ch;
	struct fsl_sata_cmd_tab *ctp;
	struct fsl_sata_dma_prd *prd;
	int i, j, len, extlen;

	if (error) {
		FUNC5(ch->dev, "DMA load error %d\n", error);
		FUNC6(slot, FSL_SATA_ERR_INVALID);
		return;
	}
	FUNC3(nsegs <= FSL_SATA_SG_ENTRIES - 1,
	    ("too many DMA segment entries\n"));
	/* Get a piece of the workspace for this request */
	ctp = FUNC0(ch, slot);
	/* Fill S/G table */
	prd = &ctp->prd_tab[0];
	for (i = 0, j = 0; i < nsegs; i++, j++) {
		if (j == FSL_SATA_PRD_EXT_INDEX &&
		    FSL_SATA_PRD_MAX_DIRECT < nsegs) {
			prd[j].dba = FUNC8(FUNC1(ch, slot) +
				     FUNC2(j+1));
			j++;
			extlen = 0;
		}
		len = segs[i].ds_len;
		len = FUNC9(len, sizeof(uint32_t));
		prd[j].dba = FUNC8((uint32_t)segs[i].ds_addr);
		prd[j].dwc_flg = FUNC8(FSL_SATA_PRD_SNOOP | len);
		slot->ttl += len;
		if (j > FSL_SATA_PRD_MAX_DIRECT)
			extlen += len;
	}
	slot->dma.nsegs = j;
	if (j > FSL_SATA_PRD_MAX_DIRECT)
		prd[FSL_SATA_PRD_EXT_INDEX].dwc_flg = 
		    FUNC8(FSL_SATA_PRD_SNOOP | FSL_SATA_PRD_EXT | extlen);
	FUNC4(ch->dma.data_tag, slot->dma.data_map,
	    ((slot->ccb->ccb_h.flags & CAM_DIR_IN) ?
	    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
	FUNC7(slot);
}