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
struct ix_rx_queue {int /*<<< orphan*/  irqs; int /*<<< orphan*/  msix; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void *arg)
{
	struct ix_rx_queue *que = arg;
	struct adapter     *adapter = que->adapter;

	FUNC0(adapter, que->msix);
	++que->irqs;

	return (FILTER_SCHEDULE_THREAD);
}