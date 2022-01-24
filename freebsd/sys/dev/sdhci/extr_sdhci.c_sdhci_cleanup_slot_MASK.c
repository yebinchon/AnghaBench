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
struct sdhci_slot {int opt; int /*<<< orphan*/  tune_data; int /*<<< orphan*/  tune_cmd; int /*<<< orphan*/  tune_req; int /*<<< orphan*/  bus; int /*<<< orphan*/ * dev; int /*<<< orphan*/  card_delayed_task; int /*<<< orphan*/  card_task; int /*<<< orphan*/  retune_callout; int /*<<< orphan*/  card_poll_callout; int /*<<< orphan*/  timeout_callout; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int SDHCI_HAVE_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  SDHCI_RESET_ALL ; 
 int SDHCI_TUNING_SUPPORTED ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi_giant ; 

int
FUNC10(struct sdhci_slot *slot)
{
	device_t d;

	FUNC3(&slot->timeout_callout);
	FUNC3(&slot->card_poll_callout);
	FUNC3(&slot->retune_callout);
	FUNC8(taskqueue_swi_giant, &slot->card_task);
	FUNC9(taskqueue_swi_giant, &slot->card_delayed_task);

	FUNC0(slot);
	d = slot->dev;
	slot->dev = NULL;
	FUNC2(slot);
	if (d != NULL)
		FUNC4(slot->bus, d);

	FUNC0(slot);
	FUNC7(slot, SDHCI_RESET_ALL);
	FUNC2(slot);
	if (slot->opt & SDHCI_HAVE_DMA)
		FUNC6(slot);
	if (slot->opt & SDHCI_TUNING_SUPPORTED) {
		FUNC5(slot->tune_req, M_DEVBUF);
		FUNC5(slot->tune_cmd, M_DEVBUF);
		FUNC5(slot->tune_data, M_DEVBUF);
	}

	FUNC1(slot);

	return (0);
}