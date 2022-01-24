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
union ring_state {scalar_t__ flags; int pidx_head; int pidx_tail; int /*<<< orphan*/  state; } ;
typedef  int uint16_t ;
struct mp_ring {int size; int /*<<< orphan*/  enqueues; int /*<<< orphan*/  state; int /*<<< orphan*/ * items; int /*<<< orphan*/  drops; } ;

/* Variables and functions */
 scalar_t__ BUSY ; 
 int ENOBUFS ; 
 scalar_t__ IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STALLED ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mp_ring*,union ring_state,scalar_t__,int) ; 
 int FUNC9 (struct mp_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_ring*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mp_ring*,union ring_state) ; 

int
FUNC12(struct mp_ring *r, void **items, int n, int budget)
{
	union ring_state os, ns;
	uint16_t pidx_start, pidx_stop;
	int i;

	FUNC0(items != NULL);
	FUNC0(n > 0);

	/*
	 * Reserve room for the new items.  Our reservation, if successful, is
	 * from 'pidx_start' to 'pidx_stop'.
	 */
	os.state = r->state;
	for (;;) {
		if (n >= FUNC11(r, os)) {
			FUNC4(r->drops, n);
			FUNC0(os.flags != IDLE);
			if (os.flags == STALLED)
				FUNC10(r, 0);
			return (ENOBUFS);
		}
		ns.state = os.state;
		ns.pidx_head = FUNC9(r, os.pidx_head, n);
		FUNC6();
		if (FUNC2(&r->state, &os.state, ns.state))
			break;
		FUNC7();
		FUNC5();
	}
	pidx_start = os.pidx_head;
	pidx_stop = ns.pidx_head;

	/*
	 * Wait for other producers who got in ahead of us to enqueue their
	 * items, one producer at a time.  It is our turn when the ring's
	 * pidx_tail reaches the beginning of our reservation (pidx_start).
	 */
	while (ns.pidx_tail != pidx_start) {
		FUNC5();
		ns.state = r->state;
	}

	/* Now it is our turn to fill up the area we reserved earlier. */
	i = pidx_start;
	do {
		r->items[i] = *items++;
		if (FUNC1(++i == r->size))
			i = 0;
	} while (i != pidx_stop);

	/*
	 * Update the ring's pidx_tail.  The release style atomic guarantees
	 * that the items are visible to any thread that sees the updated pidx.
	 */
	os.state = r->state;
	do {
		ns.state = os.state;
		ns.pidx_tail = pidx_stop;
		ns.flags = BUSY;
	} while (FUNC3(&r->state, &os.state, ns.state) == 0);
	FUNC7();
	FUNC4(r->enqueues, n);

	/*
	 * Turn into a consumer if some other thread isn't active as a consumer
	 * already.
	 */
	if (os.flags != BUSY)
		FUNC8(r, ns, os.flags, budget);

	return (0);
}