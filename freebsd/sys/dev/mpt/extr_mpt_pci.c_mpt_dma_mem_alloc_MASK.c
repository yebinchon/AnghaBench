#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_long ;
struct mpt_softc {int /*<<< orphan*/  reply_phys; int /*<<< orphan*/  reply; int /*<<< orphan*/  reply_dmap; int /*<<< orphan*/  reply_dmat; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  dev; int /*<<< orphan*/ * request_pool; } ;
struct mpt_map_info {int /*<<< orphan*/  phys; scalar_t__ error; struct mpt_softc* mpt; } ;
typedef  int /*<<< orphan*/  request_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int BUS_SPACE_UNRESTRICTED ; 
 int FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mpt_map_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpt_map_rquest ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*,char*,...) ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt)
{
	size_t len;
	struct mpt_map_info mi;

	/* Check if we alreay have allocated the reply memory */
	if (mpt->reply_phys != 0) {
		return 0;
	}

	len = sizeof (request_t) * FUNC0(mpt);
	mpt->request_pool = (request_t *)FUNC4(len, M_DEVBUF, M_WAITOK|M_ZERO);

	/*
	 * Create a parent dma tag for this device.
	 *
	 * Align at byte boundaries,
	 * Limit to 32-bit addressing for request/reply queues.
	 */
	if (FUNC5(mpt, /*parent*/FUNC3(mpt->dev),
	    /*alignment*/1, /*boundary*/0, /*lowaddr*/BUS_SPACE_MAXADDR,
	    /*highaddr*/BUS_SPACE_MAXADDR, /*filter*/NULL, /*filterarg*/NULL,
	    /*maxsize*/BUS_SPACE_MAXSIZE_32BIT,
	    /*nsegments*/BUS_SPACE_UNRESTRICTED,
	    /*maxsegsz*/BUS_SPACE_MAXSIZE_32BIT, /*flags*/0,
	    &mpt->parent_dmat) != 0) {
		FUNC6(mpt, "cannot create parent dma tag\n");
		return (1);
	}

	/* Create a child tag for reply buffers */
	if (FUNC5(mpt, mpt->parent_dmat, PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
	    NULL, NULL, 2 * PAGE_SIZE, 1, BUS_SPACE_MAXSIZE_32BIT, 0,
	    &mpt->reply_dmat) != 0) {
		FUNC6(mpt, "cannot create a dma tag for replies\n");
		return (1);
	}

	/* Allocate some DMA accessible memory for replies */
	if (FUNC2(mpt->reply_dmat, (void **)&mpt->reply,
	    BUS_DMA_NOWAIT, &mpt->reply_dmap) != 0) {
		FUNC6(mpt, "cannot allocate %lu bytes of reply memory\n",
		    (u_long) (2 * PAGE_SIZE));
		return (1);
	}

	mi.mpt = mpt;
	mi.error = 0;

	/* Load and lock it into "bus space" */
	FUNC1(mpt->reply_dmat, mpt->reply_dmap, mpt->reply,
	    2 * PAGE_SIZE, mpt_map_rquest, &mi, 0);

	if (mi.error) {
		FUNC6(mpt, "error %d loading dma map for DMA reply queue\n",
		    mi.error);
		return (1);
	}
	mpt->reply_phys = mi.phys;

	return (0);
}