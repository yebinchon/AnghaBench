#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ata_dbdma_dmaload_args {int nsegs; scalar_t__ write; struct ata_dbdma_channel* sc; } ;
struct ata_dbdma_channel {int next_dma_slot; int /*<<< orphan*/  dbdma_mtx; int /*<<< orphan*/  dbdma; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int DBDMA_ALWAYS ; 
 int DBDMA_INPUT_LAST ; 
 int DBDMA_INPUT_MORE ; 
 int DBDMA_NEVER ; 
 int DBDMA_NOP ; 
 int DBDMA_OUTPUT_LAST ; 
 int DBDMA_OUTPUT_MORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *xarg, bus_dma_segment_t *segs, int nsegs, int error)
{
	struct ata_dbdma_dmaload_args *arg = xarg;
	struct ata_dbdma_channel *sc = arg->sc;
	int branch_type, command;
	int prev_stop;
	int i;

	FUNC5(&sc->dbdma_mtx);

	prev_stop = sc->next_dma_slot-1;
	if (prev_stop < 0)
		prev_stop = 0xff;

	for (i = 0; i < nsegs; i++) {
		/* Loop back to the beginning if this is our last slot */
		if (sc->next_dma_slot == 0xff)
			branch_type = DBDMA_ALWAYS;
		else
			branch_type = DBDMA_NEVER;

		if (arg->write) {
			command = (i + 1 < nsegs) ? DBDMA_OUTPUT_MORE : 
			    DBDMA_OUTPUT_LAST;
		} else {
			command = (i + 1 < nsegs) ? DBDMA_INPUT_MORE : 
			    DBDMA_INPUT_LAST;
		}

		FUNC1(sc->dbdma, sc->next_dma_slot++,
		    command, 0, segs[i].ds_addr, segs[i].ds_len,
		    DBDMA_NEVER, branch_type, DBDMA_NEVER, 0);

		if (branch_type == DBDMA_ALWAYS)
			sc->next_dma_slot = 0;
	}

	/* We have a corner case where the STOP command is the last slot,
	 * but you can't branch in STOP commands. So add a NOP branch here
	 * and the STOP in slot 0. */

	if (sc->next_dma_slot == 0xff) {
		FUNC0(sc->dbdma, sc->next_dma_slot, 0);
		sc->next_dma_slot = 0;
	}

#if 0
	dbdma_insert_command(sc->dbdma, sc->next_dma_slot++,
	    DBDMA_NOP, 0, 0, 0, DBDMA_ALWAYS, DBDMA_NEVER, DBDMA_NEVER, 0);
#endif
	FUNC3(sc->dbdma, sc->next_dma_slot++);
	FUNC2(sc->dbdma, prev_stop);

	FUNC4(sc->dbdma, BUS_DMASYNC_PREWRITE);

	FUNC6(&sc->dbdma_mtx);

	arg->nsegs = nsegs;
}