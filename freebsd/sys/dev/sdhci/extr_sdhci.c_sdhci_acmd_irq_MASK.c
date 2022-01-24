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
typedef  int /*<<< orphan*/  uint16_t ;
struct sdhci_slot {int /*<<< orphan*/  curcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sdhci_slot *slot, uint16_t acmd_err)
{

	if (!slot->curcmd) {
		FUNC2(slot, "Got AutoCMD12 error 0x%04x, but "
		    "there is no active command.\n", acmd_err);
		FUNC0(slot);
		return;
	}
	FUNC2(slot, "Got AutoCMD12 error 0x%04x\n", acmd_err);
	FUNC1(slot, SDHCI_RESET_CMD);
}