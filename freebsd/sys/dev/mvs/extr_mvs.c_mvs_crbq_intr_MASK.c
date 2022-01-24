#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_1__ res; } ;
union ccb {TYPE_2__ ataio; } ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct mvs_crpb {int id; int rspflg; } ;
struct TYPE_7__ {int workrp_bus; int /*<<< orphan*/  workrp_map; int /*<<< orphan*/  workrp_tag; scalar_t__ workrp; } ;
struct mvs_channel {int in_idx; scalar_t__ numtslots; TYPE_3__ dma; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  rslots; TYPE_4__* slot; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {scalar_t__ state; union ccb* ccb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int EDMA_IE_EDEVERR ; 
 int /*<<< orphan*/  EDMA_RESQIP ; 
 int /*<<< orphan*/  EDMA_RESQOP ; 
 int EDMA_RESQP_ERPQP_MASK ; 
 int EDMA_RESQP_ERPQP_SHIFT ; 
 int MVS_CRPB_ATASTS_MASK ; 
 int MVS_CRPB_ATASTS_SHIFT ; 
 scalar_t__ MVS_CRPB_OFFSET ; 
 int MVS_CRPB_SIZE ; 
 int MVS_CRPB_TAG_MASK ; 
 int /*<<< orphan*/  MVS_ERR_NONE ; 
 int MVS_MAX_SLOTS ; 
 scalar_t__ MVS_SLOT_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvs_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct mvs_channel *ch = FUNC3(dev);
	struct mvs_crpb *crpb;
	union ccb *ccb;
	int in_idx, fin_idx, cin_idx, slot;
	uint32_t val;
	uint16_t flags;

	val = FUNC0(ch->r_mem, EDMA_RESQIP);
	if (val == 0)
		val = FUNC0(ch->r_mem, EDMA_RESQIP);
	in_idx = (val & EDMA_RESQP_ERPQP_MASK) >>
	    EDMA_RESQP_ERPQP_SHIFT;
	FUNC2(ch->dma.workrp_tag, ch->dma.workrp_map,
	    BUS_DMASYNC_POSTREAD);
	fin_idx = cin_idx = ch->in_idx;
	ch->in_idx = in_idx;
	while (in_idx != cin_idx) {
		crpb = (struct mvs_crpb *)
		    (ch->dma.workrp + MVS_CRPB_OFFSET +
		    (MVS_CRPB_SIZE * cin_idx));
		slot = FUNC5(crpb->id) & MVS_CRPB_TAG_MASK;
		flags = FUNC5(crpb->rspflg);
		/*
		 * Handle only successful completions here.
		 * Errors will be handled by main intr handler.
		 */
#if defined(__i386__) || defined(__amd64__)
		if (crpb->id == 0xffff && crpb->rspflg == 0xffff) {
			FUNC4(dev, "Unfilled CRPB "
			    "%d (%d->%d) tag %d flags %04x rs %08x\n",
			    cin_idx, fin_idx, in_idx, slot, flags, ch->rslots);
		} else
#endif
		if (ch->numtslots != 0 ||
		    (flags & EDMA_IE_EDEVERR) == 0) {
#if defined(__i386__) || defined(__amd64__)
			crpb->id = 0xffff;
			crpb->rspflg = 0xffff;
#endif
			if (ch->slot[slot].state >= MVS_SLOT_RUNNING) {
				ccb = ch->slot[slot].ccb;
				ccb->ataio.res.status =
				    (flags & MVS_CRPB_ATASTS_MASK) >>
				    MVS_CRPB_ATASTS_SHIFT;
				FUNC6(&ch->slot[slot], MVS_ERR_NONE);
			} else {
				FUNC4(dev, "Unused tag in CRPB "
				    "%d (%d->%d) tag %d flags %04x rs %08x\n",
				    cin_idx, fin_idx, in_idx, slot, flags,
				    ch->rslots);
			}
		} else {
			FUNC4(dev,
			    "CRPB with error %d tag %d flags %04x\n",
			    cin_idx, slot, flags);
		}
		cin_idx = (cin_idx + 1) & (MVS_MAX_SLOTS - 1);
	}
	FUNC2(ch->dma.workrp_tag, ch->dma.workrp_map,
	    BUS_DMASYNC_PREREAD);
	if (cin_idx == ch->in_idx) {
		FUNC1(ch->r_mem, EDMA_RESQOP,
		    ch->dma.workrp_bus | (cin_idx << EDMA_RESQP_ERPQP_SHIFT));
	}
}