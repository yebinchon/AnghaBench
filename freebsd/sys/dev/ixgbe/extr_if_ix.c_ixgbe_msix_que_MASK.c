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
struct ifnet {int if_drv_flags; } ;
struct adapter {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int IFF_DRV_RUNNING ; 
 struct ifnet* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	struct ix_rx_queue *que = arg;
	struct adapter     *adapter = que->adapter;
	struct ifnet       *ifp = FUNC0(que->adapter->ctx);

	/* Protect against spurious interrupts */
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return (FILTER_HANDLED);

	FUNC1(adapter, que->msix);
	++que->irqs;

	return (FILTER_SCHEDULE_THREAD);
}