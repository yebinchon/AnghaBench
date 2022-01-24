#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int func_code; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct fsl_sata_channel {scalar_t__ batch; int /*<<< orphan*/  doneq; int /*<<< orphan*/  mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  stqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int XPT_FC_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ sim_links ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 

__attribute__((used)) static void
FUNC3(struct fsl_sata_channel *ch, union ccb *ccb)
{

	FUNC1(&ch->mtx, MA_OWNED);
	if ((ccb->ccb_h.func_code & XPT_FC_QUEUED) == 0 ||
	    ch->batch == 0) {
		FUNC2(ccb);
		return;
	}

	FUNC0(&ch->doneq, &ccb->ccb_h, sim_links.stqe);
}