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
struct sdhci_slot {int flags; int quirks; scalar_t__ curcmd; struct mmc_request* req; } ;
struct mmc_request {scalar_t__ stop; TYPE_1__* cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int CMD_STARTED ; 
 int SDHCI_QUIRK_BROKEN_AUTO_STOP ; 
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int STOP_STARTED ; 
 scalar_t__ FUNC0 (int) ; 
 int sdhci_debug ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_slot*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_slot*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct sdhci_slot *slot)
{
	const struct mmc_request *req;

	req = slot->req;
	if (req == NULL)
		return;

	if (!(slot->flags & CMD_STARTED)) {
		slot->flags |= CMD_STARTED;
		FUNC3(slot, req->cmd);
		return;
	}
	if ((slot->quirks & SDHCI_QUIRK_BROKEN_AUTO_STOP) &&
	    !(slot->flags & STOP_STARTED) && req->stop) {
		slot->flags |= STOP_STARTED;
		FUNC3(slot, req->stop);
		return;
	}
	if (FUNC0(sdhci_debug > 1))
		FUNC4(slot, "result: %d\n", req->cmd->error);
	if (!req->cmd->error &&
	    ((slot->curcmd == req->stop &&
	     (slot->quirks & SDHCI_QUIRK_BROKEN_AUTO_STOP)) ||
	     (slot->quirks & SDHCI_QUIRK_RESET_AFTER_REQUEST))) {
		FUNC2(slot, SDHCI_RESET_CMD);
		FUNC2(slot, SDHCI_RESET_DATA);
	}

	FUNC1(slot);
}