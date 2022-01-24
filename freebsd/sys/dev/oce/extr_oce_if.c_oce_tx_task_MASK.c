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
struct oce_wq {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  queue_index; TYPE_1__* parent; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct ifnet* ifp; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ *,struct oce_wq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

void
FUNC5(void *arg, int npending)
{
	struct oce_wq *wq = arg;
	POCE_SOFTC sc = wq->parent;
	struct ifnet *ifp = sc->ifp;
	int rc = 0;

#if __FreeBSD_version >= 800000
	LOCK(&wq->tx_lock);
	rc = oce_multiq_transmit(ifp, NULL, wq);
	if (rc) {
		device_printf(sc->dev,
				"TX[%d] restart failed\n", wq->queue_index);
	}
	UNLOCK(&wq->tx_lock);
#else
	FUNC4(ifp);
#endif

}