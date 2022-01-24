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
struct pvscsi_softc {int /*<<< orphan*/  dev; } ;
struct pvscsi_cmd_desc_reset_device {int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PVSCSI_CMD_RESET_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_cmd_desc_reset_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_softc*,int /*<<< orphan*/ ,struct pvscsi_cmd_desc_reset_device*,int) ; 

__attribute__((used)) static void
FUNC5(struct pvscsi_softc *sc, uint32_t target)
{
	struct pvscsi_cmd_desc_reset_device cmd;

	FUNC2(&cmd, 0, sizeof(cmd));

	cmd.target = target;

	FUNC1(sc->dev, "Device reset for target %u\n", target);

	FUNC4(sc, PVSCSI_CMD_RESET_DEVICE, &cmd, sizeof cmd);
	FUNC3(sc);

	FUNC0(2, sc->dev, "device reset done\n");
}