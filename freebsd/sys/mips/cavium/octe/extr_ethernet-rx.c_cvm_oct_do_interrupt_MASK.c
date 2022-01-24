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

/* Variables and functions */
 int /*<<< orphan*/  CVMX_POW_WQ_INT ; 
 int FILTER_HANDLED ; 
 scalar_t__ INTERRUPT_LIMIT ; 
 int /*<<< orphan*/  cvm_oct_task ; 
 int /*<<< orphan*/  cvm_oct_taskq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int pow_receive_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(void *dev_id)
{
	/* Acknowledge the interrupt */
	if (INTERRUPT_LIMIT)
		FUNC0(CVMX_POW_WQ_INT, 1<<pow_receive_group);
	else
		FUNC0(CVMX_POW_WQ_INT, 0x10001<<pow_receive_group);

	/*
	 * Schedule task.
	 */
	FUNC1(cvm_oct_taskq, &cvm_oct_task);

	return FILTER_HANDLED;
}