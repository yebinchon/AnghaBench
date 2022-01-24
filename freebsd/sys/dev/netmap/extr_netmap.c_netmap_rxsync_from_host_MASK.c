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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
struct netmap_slot {int len; scalar_t__ flags; } ;
struct netmap_ring {struct netmap_slot* slot; } ;
struct mbq {int dummy; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwtail; scalar_t__ nr_hwcur; int /*<<< orphan*/  nr_kflags; struct mbq rx_queue; struct netmap_ring* ring; struct netmap_adapter* na; } ;
struct netmap_adapter {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_adapter*,struct netmap_slot*) ; 
 int NM_DEBUG_HOST ; 
 int /*<<< orphan*/  NR_FORWARD ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbq*) ; 
 scalar_t__ FUNC7 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbq*) ; 
 int netmap_debug ; 
 int FUNC11 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct netmap_kring*,int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(struct netmap_kring *kring, int flags)
{
	struct netmap_adapter *na = kring->na;
	struct netmap_ring *ring = kring->ring;
	u_int nm_i, n;
	u_int const lim = kring->nkr_num_slots - 1;
	u_int const head = kring->rhead;
	int ret = 0;
	struct mbq *q = &kring->rx_queue, fq;

	FUNC6(&fq); /* fq holds packets to be freed */

	FUNC8(q);

	/* First part: import newly received packets */
	n = FUNC7(q);
	if (n) { /* grab packets from the queue */
		struct mbuf *m;
		uint32_t stop_i;

		nm_i = kring->nr_hwtail;
		stop_i = FUNC16(kring->nr_hwcur, lim);
		while ( nm_i != stop_i && (m = FUNC3(q)) != NULL ) {
			int len = FUNC0(m);
			struct netmap_slot *slot = &ring->slot[nm_i];

			FUNC2(m, 0, len, FUNC1(na, slot));
			FUNC15("nm %d len %d", nm_i, len);
			if (netmap_debug & NM_DEBUG_HOST)
				FUNC17("%s", FUNC12(FUNC1(na, slot),len, 128, NULL));

			slot->len = len;
			slot->flags = 0;
			nm_i = FUNC14(nm_i, lim);
			FUNC4(&fq, m);
		}
		kring->nr_hwtail = nm_i;
	}

	/*
	 * Second part: skip past packets that userspace has released.
	 */
	nm_i = kring->nr_hwcur;
	if (nm_i != head) { /* something was released */
		if (FUNC13(kring, flags)) {
			ret = FUNC11(na);
			if (ret > 0) {
				kring->nr_kflags |= NR_FORWARD;
				ret = 0;
			}
		}
		kring->nr_hwcur = head;
	}

	FUNC10(q);

	FUNC9(&fq);
	FUNC5(&fq);

	return ret;
}