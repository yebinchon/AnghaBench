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
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;struct mmc_command* cmd; } ;
struct mmc_command {scalar_t__ error; TYPE_1__* data; } ;
struct jz4780_mmc_softc {int sc_dma_inuse; scalar_t__ sc_intr_seen; scalar_t__ sc_intr_wait; scalar_t__ sc_dma_map_err; scalar_t__ sc_resid; struct mmc_request* sc_req; int /*<<< orphan*/  sc_timeoutc; int /*<<< orphan*/  sc_dma_buf_map; int /*<<< orphan*/  sc_dma_buf_tag; int /*<<< orphan*/  sc_dma_map; int /*<<< orphan*/  sc_dma_tag; } ;
typedef  int /*<<< orphan*/  bus_dmasync_op_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int MMC_DATA_WRITE ; 
 scalar_t__ MMC_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*) ; 

__attribute__((used)) static void
FUNC5(struct jz4780_mmc_softc *sc)
{
	struct mmc_command *cmd;
	struct mmc_request *req;
	bus_dmasync_op_t sync_op;

	cmd = sc->sc_req->cmd;
	/* Reset the controller in case of errors */
	if (cmd->error != MMC_ERR_NONE)
		FUNC3(sc);
	/* Unmap DMA if necessary */
	if (sc->sc_dma_inuse == 1) {
		if (cmd->data->flags & MMC_DATA_WRITE)
			sync_op = BUS_DMASYNC_POSTWRITE;
		else
			sync_op = BUS_DMASYNC_POSTREAD;
		FUNC0(sc->sc_dma_buf_tag, sc->sc_dma_buf_map,
		    sync_op);
		FUNC0(sc->sc_dma_tag, sc->sc_dma_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC1(sc->sc_dma_buf_tag, sc->sc_dma_buf_map);
	}
	req = sc->sc_req;
	FUNC2(&sc->sc_timeoutc);
	sc->sc_req = NULL;
	sc->sc_resid = 0;
	sc->sc_dma_inuse = 0;
	sc->sc_dma_map_err = 0;
	sc->sc_intr_wait = 0;
	sc->sc_intr_seen = 0;
	req->done(req);
}