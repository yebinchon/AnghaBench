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
typedef  int u_int32_t ;
struct ahci_channel {scalar_t__ eslots; int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_CR ; 
 int AHCI_P_CMD_ST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct ahci_channel *ch)
{
	u_int32_t cmd;
	int timeout;

	/* Kill all activity on this channel */
	cmd = FUNC0(ch->r_mem, AHCI_P_CMD);
	FUNC1(ch->r_mem, AHCI_P_CMD, cmd & ~AHCI_P_CMD_ST);
	/* Wait for activity stop. */
	timeout = 0;
	do {
		FUNC2(10);
		if (timeout++ > 50000) {
			FUNC3(ch->dev, "stopping AHCI engine failed\n");
			break;
		}
	} while (FUNC0(ch->r_mem, AHCI_P_CMD) & AHCI_P_CMD_CR);
	ch->eslots = 0;
}