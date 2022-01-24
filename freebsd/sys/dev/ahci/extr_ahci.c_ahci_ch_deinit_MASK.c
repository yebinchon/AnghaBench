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
struct ahci_channel {int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int /*<<< orphan*/  AHCI_P_CMD_SLUMBER ; 
 int /*<<< orphan*/  AHCI_P_IE ; 
 int /*<<< orphan*/  AHCI_P_SCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_SC_DET_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahci_channel*) ; 
 struct ahci_channel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ahci_channel *ch = FUNC4(dev);

	/* Disable port interrupts. */
	FUNC0(ch->r_mem, AHCI_P_IE, 0);
	/* Reset command register. */
	FUNC2(ch);
	FUNC3(ch);
	FUNC0(ch->r_mem, AHCI_P_CMD, 0);
	/* Allow everything, including partial and slumber modes. */
	FUNC0(ch->r_mem, AHCI_P_SCTL, 0);
	/* Request slumber mode transition and give some time to get there. */
	FUNC0(ch->r_mem, AHCI_P_CMD, AHCI_P_CMD_SLUMBER);
	FUNC1(100);
	/* Disable PHY. */
	FUNC0(ch->r_mem, AHCI_P_SCTL, ATA_SC_DET_DISABLE);
	return (0);
}