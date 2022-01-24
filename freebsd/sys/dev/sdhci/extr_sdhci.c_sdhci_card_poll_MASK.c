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
struct sdhci_slot {int /*<<< orphan*/  card_poll_callout; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CARD_PRESENT_TICKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct sdhci_slot *slot = arg;

	FUNC2(slot,
	    FUNC0(slot->bus, slot));
	FUNC1(&slot->card_poll_callout, SDHCI_CARD_PRESENT_TICKS,
	    sdhci_card_poll, slot);
}