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
struct netmap_kring {int /*<<< orphan*/  tx_event_lock; struct mbuf* tx_event; } ;
struct netmap_adapter {unsigned int num_tx_rings; struct netmap_kring** tx_rings; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 unsigned int FUNC1 (struct mbuf*) ; 
 struct netmap_adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_adapter*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,struct mbuf*,...) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,...) ; 

__attribute__((used)) static void
FUNC11(struct mbuf *m)
{
	struct netmap_adapter *na = FUNC2(FUNC0(m));
	struct netmap_kring *kring;
	unsigned int r = FUNC1(m);
	unsigned int r_orig = r;

	if (FUNC9(!FUNC6(na) || r >= na->num_tx_rings)) {
		FUNC7("Error: no netmap adapter on device %p",
		  FUNC0(m));
		return;
	}

	/*
	 * First, clear the event mbuf.
	 * In principle, the event 'm' should match the one stored
	 * on ring 'r'. However we check it explicitely to stay
	 * safe against lower layers (qdisc, driver, etc.) changing
	 * MBUF_TXQ(m) under our feet. If the match is not found
	 * on 'r', we try to see if it belongs to some other ring.
	 */
	for (;;) {
		bool match = false;

		kring = na->tx_rings[r];
		FUNC3(&kring->tx_event_lock);
		if (kring->tx_event == m) {
			kring->tx_event = NULL;
			match = true;
		}
		FUNC4(&kring->tx_event_lock);

		if (match) {
			if (r != r_orig) {
				FUNC8(1, "event %p migrated: ring %u --> %u",
				      m, r_orig, r);
			}
			break;
		}

		if (++r == na->num_tx_rings) r = 0;

		if (r == r_orig) {
			FUNC8(1, "Cannot match event %p", m);
			return;
		}
	}

	/* Second, wake up clients. They will reclaim the event through
	 * txsync. */
	FUNC5(na, r, NULL);
#ifdef __FreeBSD__
#if __FreeBSD_version <= 1200050
	void_mbuf_dtor(m, NULL, NULL);
#else  /* __FreeBSD_version >= 1200051 */
	void_mbuf_dtor(m);
#endif /* __FreeBSD_version >= 1200051 */
#endif
}