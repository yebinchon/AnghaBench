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
struct ifnet {int dummy; } ;
struct ena_ring {scalar_t__ running; int /*<<< orphan*/  br; TYPE_1__* adapter; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_ring*) ; 
 int FUNC4 (struct ifnet*) ; 

void
FUNC5(void *arg, int pending)
{
	struct ena_ring *tx_ring = (struct ena_ring *)arg;
	struct ifnet *ifp = tx_ring->adapter->ifp;

	while (!FUNC2(ifp, tx_ring->br) &&
	    tx_ring->running &&
	    (FUNC4(ifp) & IFF_DRV_RUNNING) != 0) {
		FUNC0(tx_ring);
		FUNC3(tx_ring);
		FUNC1(tx_ring);
	}
}