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
struct mmc_softc {scalar_t__ squelched; int /*<<< orphan*/  dev; int /*<<< orphan*/  log_count; int /*<<< orphan*/  log_time; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int error; int /*<<< orphan*/  opcode; TYPE_1__* data; struct mmc_request* mrq; scalar_t__ retries; struct mmc_request* resp; } ;
typedef  int /*<<< orphan*/  mreq ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {struct mmc_request* mrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_PPS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,struct mmc_request*) ; 
 int MMC_ERR_FAILED ; 
 int MMC_ERR_NONE ; 
 struct mmc_softc* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(device_t busdev, device_t dev, struct mmc_command *cmd,
    int retries)
{
	struct mmc_request mreq;
	struct mmc_softc *sc;
	int err;

	do {
		FUNC3(&mreq, 0, sizeof(mreq));
		FUNC3(cmd->resp, 0, sizeof(cmd->resp));
		cmd->retries = 0; /* Retries done here, not in hardware. */
		cmd->mrq = &mreq;
		if (cmd->data != NULL)
			cmd->data->mrq = &mreq;
		mreq.cmd = cmd;
		if (FUNC0(busdev, dev, &mreq) != 0)
			err = MMC_ERR_FAILED;
		else
			err = cmd->error;
	} while (err != MMC_ERR_NONE && retries-- > 0);

	if (err != MMC_ERR_NONE && busdev == dev) {
		sc = FUNC1(busdev);
		if (sc->squelched == 0 && FUNC4(&sc->log_time,
		    &sc->log_count, LOG_PPS)) {
			FUNC2(sc->dev, "CMD%d failed, RESULT: %d\n",
			    cmd->opcode, err);
		}
	}

	return (err);
}