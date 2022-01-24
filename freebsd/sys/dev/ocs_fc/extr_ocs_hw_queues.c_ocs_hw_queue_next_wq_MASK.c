#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ ** hw_wq; int /*<<< orphan*/ * wq_cpu_array; int /*<<< orphan*/ * wq_class_array; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int wq_steering; size_t wq_class; TYPE_3__* eq; } ;
typedef  TYPE_2__ ocs_hw_io_t ;
typedef  int /*<<< orphan*/  hw_wq_t ;
struct TYPE_8__ {int /*<<< orphan*/  wq_array; } ;
typedef  TYPE_3__ hw_eq_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
#define  OCS_HW_WQ_STEERING_CLASS 130 
#define  OCS_HW_WQ_STEERING_CPU 129 
#define  OCS_HW_WQ_STEERING_REQUEST 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

hw_wq_t *
FUNC5(ocs_hw_t *hw, ocs_hw_io_t *io)
{
	hw_eq_t *eq;
	hw_wq_t *wq = NULL;

	switch(io->wq_steering) {
	case OCS_HW_WQ_STEERING_CLASS:
		if (FUNC1(io->wq_class < FUNC0(hw->wq_class_array))) {
			wq = FUNC3(hw->wq_class_array[io->wq_class]);
		}
		break;
	case OCS_HW_WQ_STEERING_REQUEST:
		eq = io->eq;
		if (FUNC1(eq != NULL)) {
			wq = FUNC3(eq->wq_array);
		}
		break;
	case OCS_HW_WQ_STEERING_CPU: {
		uint32_t cpuidx = FUNC2();

		if (FUNC1(cpuidx < FUNC0(hw->wq_cpu_array))) {
			wq = FUNC3(hw->wq_cpu_array[cpuidx]);
		}
		break;
	}
	}

	if (FUNC4(wq == NULL)) {
		wq = hw->hw_wq[0];
	}

	return wq;
}