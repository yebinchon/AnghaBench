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
struct mmc_ios {scalar_t__ power_mode; scalar_t__ clock; scalar_t__ bus_width; int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct sdhci_slot {int quirks; int /*<<< orphan*/  hostctrl; TYPE_1__ host; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CTRL_4BITBUS ; 
 int /*<<< orphan*/  SDHCI_CTRL_8BITBUS ; 
 int /*<<< orphan*/  SDHCI_CTRL_HISPD ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*) ; 
 int SDHCI_QUIRK_DONT_SET_HISPD_BIT ; 
 int SDHCI_QUIRK_RESET_ON_IOS ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sdhci_slot*) ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*) ; 
 scalar_t__ SD_SDR12_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bus_width_1 ; 
 scalar_t__ bus_width_4 ; 
 scalar_t__ bus_width_8 ; 
 struct sdhci_slot* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 scalar_t__ power_off ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_slot*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_slot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 

int
FUNC11(device_t brdev, device_t reqdev)
{
	struct sdhci_slot *slot = FUNC5(reqdev);
	struct mmc_ios *ios = &slot->host.ios;

	FUNC0(slot);
	/* Do full reset on bus power down to clear from any state. */
	if (ios->power_mode == power_off) {
		FUNC4(slot, SDHCI_SIGNAL_ENABLE, 0);
		FUNC7(slot);
	}
	/* Configure the bus. */
	FUNC9(slot, ios->clock);
	FUNC10(slot, (ios->power_mode == power_off) ? 0 : ios->vdd);
	if (ios->bus_width == bus_width_8) {
		slot->hostctrl |= SDHCI_CTRL_8BITBUS;
		slot->hostctrl &= ~SDHCI_CTRL_4BITBUS;
	} else if (ios->bus_width == bus_width_4) {
		slot->hostctrl &= ~SDHCI_CTRL_8BITBUS;
		slot->hostctrl |= SDHCI_CTRL_4BITBUS;
	} else if (ios->bus_width == bus_width_1) {
		slot->hostctrl &= ~SDHCI_CTRL_8BITBUS;
		slot->hostctrl &= ~SDHCI_CTRL_4BITBUS;
	} else {
		FUNC6("Invalid bus width: %d", ios->bus_width);
	}
	if (ios->clock > SD_SDR12_MAX &&
	    !(slot->quirks & SDHCI_QUIRK_DONT_SET_HISPD_BIT))
		slot->hostctrl |= SDHCI_CTRL_HISPD;
	else
		slot->hostctrl &= ~SDHCI_CTRL_HISPD;
	FUNC3(slot, SDHCI_HOST_CONTROL, slot->hostctrl);
	FUNC1(brdev, slot);
	/* Some controllers like reset after bus changes. */
	if (slot->quirks & SDHCI_QUIRK_RESET_ON_IOS)
		FUNC8(slot, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

	FUNC2(slot);
	return (0);
}