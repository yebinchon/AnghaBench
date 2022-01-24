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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct mmc_softc {scalar_t__ squelched; int /*<<< orphan*/  dev; int /*<<< orphan*/  log_count; int /*<<< orphan*/  log_time; } ;
struct mmc_command {int arg; int flags; int error; int* resp; int /*<<< orphan*/  opcode; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  appcmd ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_PPS ; 
 int /*<<< orphan*/  MMC_APP_CMD ; 
 int MMC_CMD_AC ; 
 int MMC_ERR_FAILED ; 
 int MMC_ERR_NONE ; 
 int MMC_RSP_R1 ; 
 int R1_APP_CMD ; 
 struct mmc_softc* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,struct mmc_command*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(device_t busdev, device_t dev, uint16_t rca,
    struct mmc_command *cmd, int retries)
{
	struct mmc_command appcmd;
	struct mmc_softc *sc;
	int err;

	sc = FUNC0(busdev);

	/* Squelch error reporting at lower levels, we report below. */
	sc->squelched++;
	do {
		FUNC2(&appcmd, 0, sizeof(appcmd));
		appcmd.opcode = MMC_APP_CMD;
		appcmd.arg = (uint32_t)rca << 16;
		appcmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
		if (FUNC3(busdev, dev, &appcmd, 0) != 0)
			err = MMC_ERR_FAILED;
		else
			err = appcmd.error;
		if (err == MMC_ERR_NONE) {
			if (!(appcmd.resp[0] & R1_APP_CMD))
				err = MMC_ERR_FAILED;
			else if (FUNC3(busdev, dev, cmd, 0) != 0)
				err = MMC_ERR_FAILED;
			else
				err = cmd->error;
		}
	} while (err != MMC_ERR_NONE && retries-- > 0);
	sc->squelched--;

	if (err != MMC_ERR_NONE && busdev == dev) {
		if (sc->squelched == 0 && FUNC4(&sc->log_time,
		    &sc->log_count, LOG_PPS)) {
			FUNC1(sc->dev, "ACMD%d failed, RESULT: %d\n",
			    cmd->opcode, err);
		}
	}

	return (err);
}