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
typedef  size_t u_int ;
struct netmap_kring {size_t nkr_num_slots; size_t nr_hwtail; size_t nr_hwcur; int /*<<< orphan*/  tx_event_lock; int /*<<< orphan*/ * tx_event; struct mbuf** tx_pool; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (size_t,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,size_t) ; 
 size_t FUNC7 (size_t,size_t const) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC10(struct netmap_kring *kring, int txqdisc)
{
	u_int const lim = kring->nkr_num_slots - 1;
	u_int nm_i = FUNC5(kring->nr_hwtail, lim);
	u_int hwcur = kring->nr_hwcur;
	u_int n = 0;
	struct mbuf **tx_pool = kring->tx_pool;

	FUNC6("hwcur = %d, hwtail = %d", kring->nr_hwcur, kring->nr_hwtail);

	while (nm_i != hwcur) { /* buffers not completed */
		struct mbuf *m = tx_pool[nm_i];

		if (txqdisc) {
			if (m == NULL) {
				/* Nothing to do, this is going
				 * to be replenished. */
				FUNC8(3, "Is this happening?");

			} else if (FUNC0(m)) {
				break; /* Not dequeued yet. */

			} else if (FUNC1(m) != 1) {
				/* This mbuf has been dequeued but is still busy
				 * (refcount is 2).
				 * Leave it to the driver and replenish. */
				FUNC2(m);
				tx_pool[nm_i] = NULL;
			}

		} else {
			if (FUNC9(m == NULL)) {
				int event_consumed;

				/* This slot was used to place an event. */
				FUNC3(&kring->tx_event_lock);
				event_consumed = (kring->tx_event == NULL);
				FUNC4(&kring->tx_event_lock);
				if (!event_consumed) {
					/* The event has not been consumed yet,
					 * still busy in the driver. */
					break;
				}
				/* The event has been consumed, we can go
				 * ahead. */

			} else if (FUNC1(m) != 1) {
				/* This mbuf is still busy: its refcnt is 2. */
				break;
			}
		}

		n++;
		nm_i = FUNC5(nm_i, lim);
	}
	kring->nr_hwtail = FUNC7(nm_i, lim);
	FUNC6("tx completed [%d] -> hwtail %d", n, kring->nr_hwtail);

	return n;
}