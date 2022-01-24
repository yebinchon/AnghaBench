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
struct sdhci_slot {int /*<<< orphan*/ * curcmd; struct mmc_request* req; int /*<<< orphan*/  timeout_callout; } ;
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_request*) ; 

__attribute__((used)) static void
FUNC2(struct sdhci_slot *slot)
{
	struct mmc_request *req;

	if (slot->req != NULL && slot->curcmd != NULL) {
		FUNC0(&slot->timeout_callout);
		req = slot->req;
		slot->req = NULL;
		slot->curcmd = NULL;
		req->done(req);
	}
}