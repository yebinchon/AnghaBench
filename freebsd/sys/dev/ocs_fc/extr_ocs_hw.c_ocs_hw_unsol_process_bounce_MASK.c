#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  unsolicited; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* unsolicited ) (int /*<<< orphan*/ ,TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_2__ args; TYPE_1__ callback; } ;
typedef  TYPE_3__ ocs_hw_t ;
struct TYPE_9__ {TYPE_3__* hw; } ;
typedef  TYPE_4__ ocs_hw_sequence_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 

void
FUNC2(void *arg)
{
	ocs_hw_sequence_t *seq = arg;
	ocs_hw_t *hw = seq->hw;

	FUNC0(hw != NULL);
	FUNC0(hw->callback.unsolicited != NULL);

	hw->callback.unsolicited(hw->args.unsolicited, seq);
}