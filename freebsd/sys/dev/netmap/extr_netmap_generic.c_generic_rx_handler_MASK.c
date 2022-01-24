#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct netmap_kring {scalar_t__ nr_mode; int /*<<< orphan*/  rx_queue; } ;
struct netmap_generic_adapter {TYPE_1__* mit; int /*<<< orphan*/  rxsg; } ;
struct netmap_adapter {size_t num_rx_rings; struct netmap_kring** rx_rings; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {int mit_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 size_t FUNC1 (struct mbuf*) ; 
 struct netmap_adapter* FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct netmap_adapter*) ; 
 scalar_t__ NKR_NETMAP_OFF ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct netmap_adapter*,size_t,size_t*) ; 
 int netmap_generic_mit ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 scalar_t__ FUNC12 (int) ; 

int
FUNC13(struct ifnet *ifp, struct mbuf *m)
{
	struct netmap_adapter *na = FUNC2(ifp);
	struct netmap_generic_adapter *gna = (struct netmap_generic_adapter *)na;
	struct netmap_kring *kring;
	u_int work_done;
	u_int r = FUNC1(m); /* receive ring number */

	if (r >= na->num_rx_rings) {
		r = r % na->num_rx_rings;
	}

	kring = na->rx_rings[r];

	if (kring->nr_mode == NKR_NETMAP_OFF) {
		/* We must not intercept this mbuf. */
		return 0;
	}

	/* limit the size of the queue */
	if (FUNC12(!gna->rxsg && FUNC0(m) > FUNC3(na))) {
		/* This may happen when GRO/LRO features are enabled for
		 * the NIC driver when the generic adapter does not
		 * support RX scatter-gather. */
		FUNC11(2, "Warning: driver pushed up big packet "
				"(size=%d)", (int)FUNC0(m));
		FUNC5(m);
	} else if (FUNC12(FUNC6(&kring->rx_queue) > 1024)) {
		FUNC5(m);
	} else {
		FUNC7(&kring->rx_queue, m);
	}

	if (netmap_generic_mit < 32768) {
		/* no rx mitigation, pass notification up */
		FUNC8(na, r, &work_done);
	} else {
		/* same as send combining, filter notification if there is a
		 * pending timer, otherwise pass it up and start a timer.
		 */
		if (FUNC4(FUNC9(&gna->mit[r]))) {
			/* Record that there is some pending work. */
			gna->mit[r].mit_pending = 1;
		} else {
			FUNC8(na, r, &work_done);
			FUNC10(&gna->mit[r]);
		}
	}

	/* We have intercepted the mbuf. */
	return 1;
}