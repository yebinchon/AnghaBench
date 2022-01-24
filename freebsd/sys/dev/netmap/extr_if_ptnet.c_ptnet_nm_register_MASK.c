#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ptnet_softc {int num_rings; int num_tx_rings; TYPE_4__* ptna; struct ptnet_queue* queues; } ;
struct ptnet_queue {TYPE_3__* atok; TYPE_2__* ktoa; } ;
struct netmap_adapter {scalar_t__ active_fds; TYPE_5__* ifp; } ;
typedef  TYPE_5__* if_t ;
struct TYPE_11__ {int if_capenable; } ;
struct TYPE_7__ {struct netmap_adapter up; } ;
struct TYPE_10__ {scalar_t__ backend_users; TYPE_1__ hwup; } ;
struct TYPE_9__ {int appl_need_kick; } ;
struct TYPE_8__ {int kern_need_kick; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  PTNETMAP_PTCTL_CREATE ; 
 int /*<<< orphan*/  PTNETMAP_PTCTL_DELETE ; 
 struct ptnet_softc* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_adapter*) ; 
 int FUNC5 (struct ptnet_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ptnet_softc*,struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ptnet_softc*) ; 

__attribute__((used)) static int
FUNC8(struct netmap_adapter *na, int onoff)
{
	/* device-specific */
	if_t ifp = na->ifp;
	struct ptnet_softc *sc = FUNC0(ifp);
	int native = (na == &sc->ptna->hwup.up);
	struct ptnet_queue *pq;
	int ret = 0;
	int i;

	if (!onoff) {
		sc->ptna->backend_users--;
	}

	/* If this is the last netmap client, guest interrupt enable flags may
	 * be in arbitrary state. Since these flags are going to be used also
	 * by the netdevice driver, we have to make sure to start with
	 * notifications enabled. Also, schedule NAPI to flush pending packets
	 * in the RX rings, since we will not receive further interrupts
	 * until these will be processed. */
	if (native && !onoff && na->active_fds == 0) {
		FUNC3("Exit netmap mode, re-enable interrupts");
		for (i = 0; i < sc->num_rings; i++) {
			pq = sc->queues + i;
			pq->atok->appl_need_kick = 1;
		}
	}

	if (onoff) {
		if (sc->ptna->backend_users == 0) {
			/* Initialize notification enable fields in the CSB. */
			for (i = 0; i < sc->num_rings; i++) {
				pq = sc->queues + i;
				pq->ktoa->kern_need_kick = 1;
				pq->atok->appl_need_kick =
					(!(ifp->if_capenable & IFCAP_POLLING)
						&& i >= sc->num_tx_rings);
			}

			/* Set the virtio-net header length. */
			FUNC7(sc);

			/* Make sure the host adapter passed through is ready
			 * for txsync/rxsync. */
			ret = FUNC5(sc, PTNETMAP_PTCTL_CREATE);
			if (ret) {
				return ret;
			}

			/* Align the guest krings and rings to the state stored
			 * in the CSB. */
			FUNC6(sc, na);
		}

		/* If not native, don't call nm_set_native_flags, since we don't want
		 * to replace if_transmit method, nor set NAF_NETMAP_ON */
		if (native) {
			FUNC1(na, onoff);
			FUNC4(na);
		}

	} else {
		if (native) {
			FUNC2(na);
			FUNC1(na, onoff);
		}

		if (sc->ptna->backend_users == 0) {
			ret = FUNC5(sc, PTNETMAP_PTCTL_DELETE);
		}
	}

	if (onoff) {
		sc->ptna->backend_users++;
	}

	return ret;
}