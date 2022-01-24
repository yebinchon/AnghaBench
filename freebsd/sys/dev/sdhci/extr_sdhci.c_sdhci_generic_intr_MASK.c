#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sdhci_slot {int intmask; int /*<<< orphan*/  retune_req; TYPE_1__* curcmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_ERR_BADCRC ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDHCI_ACMD12_ERR ; 
 int SDHCI_INT_ACMD12ERR ; 
 int SDHCI_INT_BUS_POWER ; 
 int SDHCI_INT_CARD_INSERT ; 
 int SDHCI_INT_CARD_REMOVE ; 
 int SDHCI_INT_CMD_ERROR_MASK ; 
 int SDHCI_INT_CMD_MASK ; 
 int SDHCI_INT_DATA_MASK ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int SDHCI_INT_ERROR ; 
 int SDHCI_INT_RETUNE ; 
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 int SDHCI_INT_TUNEERR ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  SDHCI_RETUNE_REQ_NEEDED ; 
 int /*<<< orphan*/  SDHCI_RETUNE_REQ_RESET ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_slot*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_slot*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_slot*,int) ; 
 int sdhci_debug ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_slot*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_slot*,char*,...) ; 

void
FUNC13(struct sdhci_slot *slot)
{
	uint32_t intmask, present;
	uint16_t val16;

	FUNC2(slot);
	/* Read slot interrupt status. */
	intmask = FUNC1(slot, SDHCI_INT_STATUS);
	if (intmask == 0 || intmask == 0xffffffff) {
		FUNC3(slot);
		return;
	}
	if (FUNC5(sdhci_debug > 2))
		FUNC12(slot, "Interrupt %#x\n", intmask);

	/* Handle tuning error interrupt. */
	if (FUNC5(intmask & SDHCI_INT_TUNEERR)) {
		FUNC4(slot, SDHCI_INT_STATUS, SDHCI_INT_TUNEERR);
		FUNC12(slot, "Tuning error indicated\n");
		slot->retune_req |= SDHCI_RETUNE_REQ_RESET;
		if (slot->curcmd) {
			slot->curcmd->error = MMC_ERR_BADCRC;
			FUNC10(slot);
		}
	}
	/* Handle re-tuning interrupt. */
	if (FUNC5(intmask & SDHCI_INT_RETUNE))
		slot->retune_req |= SDHCI_RETUNE_REQ_NEEDED;
	/* Handle card presence interrupts. */
	if (intmask & (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE)) {
		present = (intmask & SDHCI_INT_CARD_INSERT) != 0;
		slot->intmask &=
		    ~(SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE);
		slot->intmask |= present ? SDHCI_INT_CARD_REMOVE :
		    SDHCI_INT_CARD_INSERT;
		FUNC4(slot, SDHCI_INT_ENABLE, slot->intmask);
		FUNC4(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
		FUNC4(slot, SDHCI_INT_STATUS, intmask &
		    (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE));
		FUNC11(slot, present);
	}
	/* Handle command interrupts. */
	if (intmask & SDHCI_INT_CMD_MASK) {
		FUNC4(slot, SDHCI_INT_STATUS, intmask & SDHCI_INT_CMD_MASK);
		FUNC7(slot, intmask & SDHCI_INT_CMD_MASK);
	}
	/* Handle data interrupts. */
	if (intmask & SDHCI_INT_DATA_MASK) {
		FUNC4(slot, SDHCI_INT_STATUS, intmask & SDHCI_INT_DATA_MASK);
		/* Don't call data_irq in case of errored command. */
		if ((intmask & SDHCI_INT_CMD_ERROR_MASK) == 0)
			FUNC8(slot, intmask & SDHCI_INT_DATA_MASK);
	}
	/* Handle AutoCMD12 error interrupt. */
	if (intmask & SDHCI_INT_ACMD12ERR) {
		/* Clearing SDHCI_INT_ACMD12ERR may clear SDHCI_ACMD12_ERR. */
		val16 = FUNC0(slot, SDHCI_ACMD12_ERR);
		FUNC4(slot, SDHCI_INT_STATUS, SDHCI_INT_ACMD12ERR);
		FUNC6(slot, val16);
	}
	/* Handle bus power interrupt. */
	if (intmask & SDHCI_INT_BUS_POWER) {
		FUNC4(slot, SDHCI_INT_STATUS, SDHCI_INT_BUS_POWER);
		FUNC12(slot, "Card is consuming too much power!\n");
	}
	intmask &= ~(SDHCI_INT_ERROR | SDHCI_INT_TUNEERR | SDHCI_INT_RETUNE |
	    SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE | SDHCI_INT_CMD_MASK |
	    SDHCI_INT_DATA_MASK | SDHCI_INT_ACMD12ERR | SDHCI_INT_BUS_POWER);
	/* The rest is unknown. */
	if (intmask) {
		FUNC4(slot, SDHCI_INT_STATUS, intmask);
		FUNC12(slot, "Unexpected interrupt 0x%08x.\n",
		    intmask);
		FUNC9(slot);
	}

	FUNC3(slot);
}