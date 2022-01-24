#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  wq_reqtag_pool; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int /*<<< orphan*/ * arg; int /*<<< orphan*/ * callback; scalar_t__ instance_index; } ;
typedef  TYPE_2__ hw_wq_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC3(ocs_hw_t *hw)
{
	hw_wq_callback_t *wqcb;
	uint32_t i;

	/* Remove all from freelist */
	while(FUNC0(hw->wq_reqtag_pool) != NULL) {
		;
	}

	/* Put them all back */
	for (i = 0; ((wqcb = FUNC1(hw->wq_reqtag_pool, i)) != NULL); i++) {
		wqcb->instance_index = i;
		wqcb->callback = NULL;
		wqcb->arg = NULL;
		FUNC2(hw->wq_reqtag_pool, wqcb);
	}
}