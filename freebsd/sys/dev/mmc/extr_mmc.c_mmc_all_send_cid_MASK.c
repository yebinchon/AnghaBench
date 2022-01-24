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
typedef  int /*<<< orphan*/  uint32_t ;
struct mmc_softc {int /*<<< orphan*/  dev; } ;
struct mmc_command {int flags; int /*<<< orphan*/  resp; int /*<<< orphan*/ * data; scalar_t__ arg; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RETRIES ; 
 int /*<<< orphan*/  MMC_ALL_SEND_CID ; 
 int MMC_CMD_BCR ; 
 int MMC_RSP_R2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mmc_softc *sc, uint32_t *rawcid)
{
	struct mmc_command cmd;
	int err;

	FUNC1(&cmd, 0, sizeof(cmd));
	cmd.opcode = MMC_ALL_SEND_CID;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_R2 | MMC_CMD_BCR;
	cmd.data = NULL;
	err = FUNC2(sc->dev, sc->dev, &cmd, CMD_RETRIES);
	FUNC0(rawcid, cmd.resp, 4 * sizeof(uint32_t));
	return (err);
}