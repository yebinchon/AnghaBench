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
struct ixl_rx_queue {int /*<<< orphan*/  irqs; } ;

/* Variables and functions */
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_rx_queue*) ; 

__attribute__((used)) static int
FUNC1(void *arg)
{
	struct ixl_rx_queue *rx_que = arg;

	++rx_que->irqs;

	FUNC0(rx_que);
	// iavf_set_queue_tx_itr(que);

	return (FILTER_SCHEDULE_THREAD);
}