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
struct sdhci_slot {int intmask; int quirks; int opt; } ;

/* Variables and functions */
 int SDHCI_INT_ACMD12ERR ; 
 int SDHCI_INT_BUS_POWER ; 
 int SDHCI_INT_CARD_INSERT ; 
 int SDHCI_INT_CARD_REMOVE ; 
 int SDHCI_INT_CRC ; 
 int SDHCI_INT_DATA_AVAIL ; 
 int SDHCI_INT_DATA_CRC ; 
 int SDHCI_INT_DATA_END ; 
 int SDHCI_INT_DATA_END_BIT ; 
 int SDHCI_INT_DATA_TIMEOUT ; 
 int SDHCI_INT_DMA_END ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int SDHCI_INT_END_BIT ; 
 int SDHCI_INT_INDEX ; 
 int SDHCI_INT_RESPONSE ; 
 int SDHCI_INT_SPACE_AVAIL ; 
 int SDHCI_INT_TIMEOUT ; 
 int SDHCI_NON_REMOVABLE ; 
 int SDHCI_QUIRK_POLL_CARD_PRESENT ; 
 int /*<<< orphan*/  SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct sdhci_slot *slot)
{

	FUNC1(slot, SDHCI_RESET_ALL);

	/* Enable interrupts. */
	slot->intmask = SDHCI_INT_BUS_POWER | SDHCI_INT_DATA_END_BIT |
	    SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_TIMEOUT | SDHCI_INT_INDEX |
	    SDHCI_INT_END_BIT | SDHCI_INT_CRC | SDHCI_INT_TIMEOUT |
	    SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL |
	    SDHCI_INT_DMA_END | SDHCI_INT_DATA_END | SDHCI_INT_RESPONSE |
	    SDHCI_INT_ACMD12ERR;

	if (!(slot->quirks & SDHCI_QUIRK_POLL_CARD_PRESENT) &&
	    !(slot->opt & SDHCI_NON_REMOVABLE)) {
		slot->intmask |= SDHCI_INT_CARD_REMOVE | SDHCI_INT_CARD_INSERT;
	}

	FUNC0(slot, SDHCI_INT_ENABLE, slot->intmask);
	FUNC0(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
}