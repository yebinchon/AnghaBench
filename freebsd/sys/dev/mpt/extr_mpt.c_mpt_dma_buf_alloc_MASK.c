#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct mpt_softc {int max_cam_seg_cnt; scalar_t__ request_phys; int /*<<< orphan*/  buffer_dmat; TYPE_1__* request_pool; int /*<<< orphan*/ * request; int /*<<< orphan*/  request_dmap; int /*<<< orphan*/  request_dmat; int /*<<< orphan*/  parent_dmat; } ;
struct mpt_map_info {int error; scalar_t__ phys; struct mpt_softc* mpt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmap; int /*<<< orphan*/ * sense_vbuf; scalar_t__ sense_pbuf; int /*<<< orphan*/ * req_vbuf; scalar_t__ req_pbuf; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ request_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 scalar_t__ MPT_REQUEST_AREA ; 
 int FUNC0 (struct mpt_softc*) ; 
 scalar_t__ MPT_SENSE_SIZE ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct mpt_map_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpt_map_rquest ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,char*,...) ; 

__attribute__((used)) static int
FUNC6(struct mpt_softc *mpt)
{
	struct mpt_map_info mi;
	uint8_t *vptr;
	uint32_t pptr, end;
	int i, error;

	/* Create a child tag for data buffers */
	if (FUNC4(mpt, mpt->parent_dmat, 1,
	    0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, (mpt->max_cam_seg_cnt - 1) * PAGE_SIZE,
	    mpt->max_cam_seg_cnt, BUS_SPACE_MAXSIZE_32BIT, 0,
	    &mpt->buffer_dmat) != 0) {
		FUNC5(mpt, "cannot create a dma tag for data buffers\n");
		return (1);
	}

	/* Create a child tag for request buffers */
	if (FUNC4(mpt, mpt->parent_dmat, PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
	    NULL, NULL, FUNC0(mpt), 1, BUS_SPACE_MAXSIZE_32BIT, 0,
	    &mpt->request_dmat) != 0) {
		FUNC5(mpt, "cannot create a dma tag for requests\n");
		return (1);
	}

	/* Allocate some DMA accessible memory for requests */
	if (FUNC3(mpt->request_dmat, (void **)&mpt->request,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &mpt->request_dmap) != 0) {
		FUNC5(mpt, "cannot allocate %d bytes of request memory\n",
		    FUNC0(mpt));
		return (1);
	}

	mi.mpt = mpt;
	mi.error = 0;

	/* Load and lock it into "bus space" */
	FUNC2(mpt->request_dmat, mpt->request_dmap, mpt->request,
	    FUNC0(mpt), mpt_map_rquest, &mi, 0);

	if (mi.error) {
		FUNC5(mpt, "error %d loading dma map for DMA request queue\n",
		    mi.error);
		return (1);
	}
	mpt->request_phys = mi.phys;

	/*
	 * Now create per-request dma maps
	 */
	i = 0;
	pptr =  mpt->request_phys;
	vptr =  mpt->request;
	end = pptr + FUNC0(mpt);
	while(pptr < end) {
		request_t *req = &mpt->request_pool[i];
		req->index = i++;

		/* Store location of Request Data */
		req->req_pbuf = pptr;
		req->req_vbuf = vptr;

		pptr += MPT_REQUEST_AREA;
		vptr += MPT_REQUEST_AREA;

		req->sense_pbuf = (pptr - MPT_SENSE_SIZE);
		req->sense_vbuf = (vptr - MPT_SENSE_SIZE);

		error = FUNC1(mpt->buffer_dmat, 0, &req->dmap);
		if (error) {
			FUNC5(mpt, "error %d creating per-cmd DMA maps\n",
			    error);
			return (1);
		}
	}

	return (0);
}