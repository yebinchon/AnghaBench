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
struct al_eth_adapter {TYPE_1__* netdev; } ;
typedef  TYPE_1__* if_t ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*) ; 
 int FUNC1 (struct al_eth_adapter*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct al_eth_adapter *adapter = arg;
	if_t ifp = adapter->netdev;
	int rc = 0;

	FUNC0(adapter);
	rc = FUNC1(adapter);

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	if (rc == 0)
		ifp->if_drv_flags |= IFF_DRV_RUNNING;
}