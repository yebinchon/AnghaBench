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
struct ahci_channel {int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_FRE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ahci_channel *ch)
{
	u_int32_t cmd;

	/* Start FIS reception on this channel */
	cmd = FUNC0(ch->r_mem, AHCI_P_CMD);
	FUNC1(ch->r_mem, AHCI_P_CMD, cmd | AHCI_P_CMD_FRE);
}