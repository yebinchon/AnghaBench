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
struct sdhci_slot {int /*<<< orphan*/  opt; int /*<<< orphan*/  retune_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_TUNING_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct sdhci_slot *slot)
{

	/*
	 * We expect the MMC layer to issue initial tuning after resume.
	 * Otherwise, we'd need to indicate re-tuning including circuit reset
	 * being required at least for re-tuning modes 1 and 2 ourselves.
	 */
	FUNC2(&slot->retune_callout);
	FUNC0(slot);
	slot->opt &= ~SDHCI_TUNING_ENABLED;
	FUNC3(slot, SDHCI_RESET_ALL);
	FUNC1(slot);

	return (0);
}