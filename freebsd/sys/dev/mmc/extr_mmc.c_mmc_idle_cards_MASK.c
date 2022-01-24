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
struct mmc_softc {int /*<<< orphan*/  dev; } ;
struct mmc_command {int flags; int /*<<< orphan*/ * data; scalar_t__ arg; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RETRIES ; 
 int MMC_CMD_BC ; 
 int /*<<< orphan*/  MMC_GO_IDLE_STATE ; 
 int MMC_RSP_NONE ; 
 int /*<<< orphan*/  cs_dontcare ; 
 int /*<<< orphan*/  cs_high ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mmc_softc *sc)
{
	device_t dev;
	struct mmc_command cmd;

	dev = sc->dev;
	FUNC3(dev, cs_high);
	FUNC4(dev);
	FUNC1(1);

	FUNC0(&cmd, 0, sizeof(cmd));
	cmd.opcode = MMC_GO_IDLE_STATE;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_NONE | MMC_CMD_BC;
	cmd.data = NULL;
	FUNC2(sc->dev, sc->dev, &cmd, CMD_RETRIES);
	FUNC1(1);

	FUNC3(dev, cs_dontcare);
	FUNC4(dev);
	FUNC1(1);
}