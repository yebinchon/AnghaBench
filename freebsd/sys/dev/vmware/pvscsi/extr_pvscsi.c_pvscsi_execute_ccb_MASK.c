#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int timeout; int /*<<< orphan*/  status; struct pvscsi_softc* ccb_pvscsi_sc; } ;
union ccb {TYPE_2__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct pvscsi_softc {int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct pvscsi_rings_state* rings_state; } ;
struct pvscsi_sg_element {scalar_t__ flags; int /*<<< orphan*/  length; scalar_t__ addr; } ;
struct pvscsi_rings_state {int /*<<< orphan*/  req_prod_idx; } ;
struct pvscsi_ring_req_desc {int /*<<< orphan*/ * cdb; scalar_t__ data_addr; int /*<<< orphan*/  flags; } ;
struct pvscsi_hcb {int /*<<< orphan*/  callout; int /*<<< orphan*/  dma_map; scalar_t__ sg_list_paddr; TYPE_1__* sg_list; struct pvscsi_ring_req_desc* e; union ccb* ccb; } ;
typedef  scalar_t__ bus_dmasync_op_t ;
struct TYPE_7__ {scalar_t__ ds_addr; int /*<<< orphan*/  ds_len; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
struct TYPE_5__ {struct pvscsi_sg_element* sge; } ;

/* Variables and functions */
 scalar_t__ BUS_DMASYNC_PREREAD ; 
 scalar_t__ BUS_DMASYNC_PREWRITE ; 
#define  CAM_DIR_BOTH 131 
#define  CAM_DIR_IN 130 
 int CAM_DIR_MASK ; 
#define  CAM_DIR_NONE 129 
#define  CAM_DIR_OUT 128 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_REQ_TOO_BIG ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 int CAM_TIME_INFINITY ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_DIR_NONE ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_DIR_TODEVICE ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_DIR_TOHOST ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_WITH_SG_LIST ; 
 int PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pvscsi_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_softc*,struct pvscsi_hcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct pvscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvscsi_timeout ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct pvscsi_hcb *hcb;
	struct pvscsi_ring_req_desc *e;
	union ccb *ccb;
	struct pvscsi_softc *sc;
	struct pvscsi_rings_state *s;
	uint8_t cdb0;
	bus_dmasync_op_t op;

	hcb = arg;
	ccb = hcb->ccb;
	e = hcb->e;
	sc = ccb->ccb_h.ccb_pvscsi_sc;
	s = sc->rings_state;

	FUNC5(&sc->lock, MA_OWNED);

	if (error) {
		FUNC3(sc->dev, "pvscsi_execute_ccb error %d\n", error);

		if (error == EFBIG) {
			ccb->ccb_h.status = CAM_REQ_TOO_BIG;
		} else {
			ccb->ccb_h.status = CAM_REQ_CMP_ERR;
		}

		FUNC6(sc, hcb);
		FUNC8(ccb);
		return;
	}

	e->flags = 0;
	op = 0;
	switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
	case CAM_DIR_NONE:
		e->flags |= PVSCSI_FLAG_CMD_DIR_NONE;
		break;
	case CAM_DIR_IN:
		e->flags |= PVSCSI_FLAG_CMD_DIR_TOHOST;
		op = BUS_DMASYNC_PREREAD;
		break;
	case CAM_DIR_OUT:
		e->flags |= PVSCSI_FLAG_CMD_DIR_TODEVICE;
		op = BUS_DMASYNC_PREWRITE;
		break;
	case CAM_DIR_BOTH:
		/* TODO: does this need handling? */
		break;
	}

	if (nseg != 0) {
		if (nseg > 1) {
			int i;
			struct pvscsi_sg_element *sge;

			FUNC0(nseg <= PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT,
			    ("too many sg segments"));

			sge = hcb->sg_list->sge;
			e->flags |= PVSCSI_FLAG_CMD_WITH_SG_LIST;

			for (i = 0; i < nseg; ++i) {
				sge[i].addr = segs[i].ds_addr;
				sge[i].length = segs[i].ds_len;
				sge[i].flags = 0;
			}

			e->data_addr = hcb->sg_list_paddr;
		} else {
			e->data_addr = segs->ds_addr;
		}

		FUNC1(sc->buffer_dmat, hcb->dma_map, op);
	} else {
		e->data_addr = 0;
	}

	cdb0 = e->cdb[0];
	ccb->ccb_h.status |= CAM_SIM_QUEUED;

	if (ccb->ccb_h.timeout != CAM_TIME_INFINITY) {
		FUNC2(&hcb->callout, ccb->ccb_h.timeout * SBT_1MS,
		    0, pvscsi_timeout, hcb, 0);
	}

	FUNC4();
	s->req_prod_idx++;
	FUNC7(sc, cdb0);
}