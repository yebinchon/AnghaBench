#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int opcode; int* resp; int error; TYPE_1__* data; } ;
struct ccb_mmcio {TYPE_2__ cmd; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_mmcio mmcio; } ;
struct mmcnull_softc {union ccb* cur_ccb; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
#define  ACMD_SD_SEND_OP_COND 137 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  MA_OWNED ; 
#define  MMC_ALL_SEND_CID 136 
#define  MMC_APP_CMD 135 
#define  MMC_GO_IDLE_STATE 134 
 int MMC_OCR_CARD_BUSY ; 
#define  MMC_READ_MULTIPLE_BLOCK 133 
#define  MMC_READ_SINGLE_BLOCK 132 
#define  MMC_SELECT_CARD 131 
#define  MMC_SEND_CSD 130 
 int R1_APP_CMD ; 
#define  SD_SEND_IF_COND 129 
#define  SD_SEND_RELATIVE_ADDR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 

__attribute__((used)) static void
FUNC4(void *xsc) {
	struct mmcnull_softc *sc;
	union ccb *ccb;
	struct ccb_mmcio *mmcio;

	sc = (struct mmcnull_softc *) xsc;
	FUNC1(&sc->sc_mtx, MA_OWNED);

	ccb = sc->cur_ccb;
	mmcio = &ccb->mmcio;
	FUNC0(sc->dev, "mmcnull_intr: MMC command = %d\n",
		      mmcio->cmd.opcode);

	switch (mmcio->cmd.opcode) {
	case MMC_GO_IDLE_STATE:
		FUNC0(sc->dev, "Reset device\n");
		break;
	case SD_SEND_IF_COND:
		mmcio->cmd.resp[0] = 0x1AA; // To match mmc_xpt expectations :-)
		break;
	case MMC_APP_CMD:
		mmcio->cmd.resp[0] = R1_APP_CMD;
		break;
	case SD_SEND_RELATIVE_ADDR:
	case MMC_SELECT_CARD:
		mmcio->cmd.resp[0] = 0x1 << 16;
		break;
	case ACMD_SD_SEND_OP_COND:
		mmcio->cmd.resp[0] = 0xc0ff8000;
		mmcio->cmd.resp[0] |= MMC_OCR_CARD_BUSY;
		break;
	case MMC_ALL_SEND_CID:
		/* Note: this is a real CID from Wandboard int mmc */
		mmcio->cmd.resp[0] = 0x1b534d30;
		mmcio->cmd.resp[1] = 0x30303030;
		mmcio->cmd.resp[2] = 0x10842806;
		mmcio->cmd.resp[3] = 0x5700e900;
		break;
	case MMC_SEND_CSD:
		/* Note: this is a real CSD from Wandboard int mmc */
		mmcio->cmd.resp[0] = 0x400e0032;
		mmcio->cmd.resp[1] = 0x5b590000;
		mmcio->cmd.resp[2] = 0x751f7f80;
		mmcio->cmd.resp[3] = 0x0a404000;
		break;
	case MMC_READ_SINGLE_BLOCK:
	case MMC_READ_MULTIPLE_BLOCK:
		FUNC2(mmcio->cmd.data->data, "WTF?!");
		break;
	default:
		FUNC0(sc->dev, "mmcnull_intr_sd: unknown command\n");
		mmcio->cmd.error = 1;
	}
	ccb->ccb_h.status = CAM_REQ_CMP;

	sc->cur_ccb = NULL;
	FUNC3(ccb);
}