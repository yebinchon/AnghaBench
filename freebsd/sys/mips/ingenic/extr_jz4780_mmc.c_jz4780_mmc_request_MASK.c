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
typedef  int uint32_t ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int flags; int opcode; int arg; TYPE_1__* data; int /*<<< orphan*/  error; } ;
struct jz4780_mmc_softc {int sc_cmdat; scalar_t__ sc_dma_inuse; int sc_intr_wait; int sc_intr_mask; int sc_timeout; int /*<<< orphan*/  sc_timeoutc; int /*<<< orphan*/  sc_dev; scalar_t__ sc_intr_seen; scalar_t__ sc_resid; struct mmc_request* sc_req; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int flags; int len; } ;

/* Variables and functions */
 int EBUSY ; 
 int JZ_AUTO_CMD12 ; 
 int JZ_BUSY ; 
 int JZ_CLOCK_START ; 
 int JZ_DATA_EN ; 
 int JZ_INIT ; 
 int JZ_INT_AUTO_CMD12_DONE ; 
 int JZ_INT_DATA_TRAN_DONE ; 
 int JZ_INT_DMAEND ; 
 int JZ_INT_END_CMD_RES ; 
 int JZ_INT_PRG_DONE ; 
 int JZ_INT_RXFIFO_RD_REQ ; 
 int JZ_INT_TXFIFO_WR_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  JZ_MSC_ARG ; 
 int /*<<< orphan*/  JZ_MSC_BLKLEN ; 
 int /*<<< orphan*/  JZ_MSC_CMD ; 
 int /*<<< orphan*/  JZ_MSC_CMDAT ; 
 int /*<<< orphan*/  JZ_MSC_CTRL ; 
 int /*<<< orphan*/  JZ_MSC_DMAC ; 
 int /*<<< orphan*/  JZ_MSC_IMASK ; 
 int /*<<< orphan*/  JZ_MSC_NOB ; 
 int JZ_RES_R1 ; 
 int JZ_RES_R2 ; 
 int JZ_RES_R3 ; 
 int JZ_START_OP ; 
 int JZ_STREAM ; 
 int JZ_WRITE ; 
 int MMC_DATA_MULTI ; 
 int MMC_DATA_STREAM ; 
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  MMC_ERR_NONE ; 
 int MMC_GO_IDLE_STATE ; 
 int FUNC3 (int) ; 
 int MMC_RSP_BUSY ; 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int /*<<< orphan*/  MMC_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct jz4780_mmc_softc*) ; 
 struct jz4780_mmc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int hz ; 
 scalar_t__ jz4780_mmc_pio_mode ; 
 int /*<<< orphan*/  FUNC7 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  jz4780_mmc_timeout ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t child, struct mmc_request *req)
{
	struct jz4780_mmc_softc *sc;
	struct mmc_command *cmd;
	uint32_t cmdat, iwait;
	int blksz;

	sc = FUNC5(bus);
	FUNC0(sc);
	if (sc->sc_req != NULL) {
		FUNC1(sc);
		return (EBUSY);
	}
	/* Start with template value */
	cmdat = sc->sc_cmdat;
	iwait = JZ_INT_END_CMD_RES;

	/* Configure response format */
	cmd = req->cmd;
	switch (FUNC3(cmd->flags)) {
	case MMC_RSP_R1:
	case MMC_RSP_R1B:
		cmdat |= JZ_RES_R1;
		break;
	case MMC_RSP_R2:
		cmdat |= JZ_RES_R2;
		break;
	case MMC_RSP_R3:
		cmdat |= JZ_RES_R3;
		break;
	};
	if (cmd->opcode == MMC_GO_IDLE_STATE)
		cmdat |= JZ_INIT;
	if (cmd->flags & MMC_RSP_BUSY) {
		cmdat |= JZ_BUSY;
		iwait |= JZ_INT_PRG_DONE;
	}

	sc->sc_req = req;
	sc->sc_resid = 0;
	cmd->error = MMC_ERR_NONE;

	if (cmd->data != NULL) {
		cmdat |= JZ_DATA_EN;
		if (cmd->data->flags & MMC_DATA_MULTI) {
			cmdat |= JZ_AUTO_CMD12;
			iwait |= JZ_INT_AUTO_CMD12_DONE;
		}
		if (cmd->data->flags & MMC_DATA_WRITE) {
			cmdat |= JZ_WRITE;
			iwait |= JZ_INT_PRG_DONE;
		}
		if (cmd->data->flags & MMC_DATA_STREAM)
			cmdat |= JZ_STREAM;
		else
			iwait |= JZ_INT_DATA_TRAN_DONE;

		blksz = FUNC8(cmd->data->len, MMC_SECTOR_SIZE);
		FUNC2(sc, JZ_MSC_BLKLEN, blksz);
		FUNC2(sc, JZ_MSC_NOB, cmd->data->len / blksz);

		/* Attempt to setup DMA for this transaction */
		if (jz4780_mmc_pio_mode == 0)
			FUNC7(sc);
		if (sc->sc_dma_inuse != 0) {
			/* Wait for DMA completion interrupt */
			iwait |= JZ_INT_DMAEND;
		} else {
			iwait |= (cmd->data->flags & MMC_DATA_WRITE) ?
			    JZ_INT_TXFIFO_WR_REQ : JZ_INT_RXFIFO_RD_REQ;
			FUNC2(sc, JZ_MSC_DMAC, 0);
		}
	}

	sc->sc_intr_seen = 0;
	sc->sc_intr_wait = iwait;
	FUNC2(sc, JZ_MSC_IMASK, ~(sc->sc_intr_mask | iwait));

#if defined(JZ_MMC_DEBUG)
	device_printf(sc->sc_dev,
	    "REQUEST: CMD%u arg %#x flags %#x cmdat %#x sc_intr_wait = %#x\n",
	    cmd->opcode, cmd->arg, cmd->flags, cmdat, sc->sc_intr_wait);
#endif

	FUNC2(sc, JZ_MSC_ARG, cmd->arg);
	FUNC2(sc, JZ_MSC_CMD, cmd->opcode);
	FUNC2(sc, JZ_MSC_CMDAT, cmdat);

	FUNC2(sc, JZ_MSC_CTRL, JZ_START_OP | JZ_CLOCK_START);

	FUNC4(&sc->sc_timeoutc, sc->sc_timeout * hz,
	    jz4780_mmc_timeout, sc);
	FUNC1(sc);

	return (0);
}