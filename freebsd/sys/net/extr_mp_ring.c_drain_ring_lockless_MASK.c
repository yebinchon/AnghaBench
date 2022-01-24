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
union ring_state {scalar_t__ cidx; scalar_t__ pidx_tail; scalar_t__ flags; int /*<<< orphan*/  state; } ;
typedef  scalar_t__ uint16_t ;
struct ifmp_ring {int (* drain ) (struct ifmp_ring*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  restarts; int /*<<< orphan*/  abdications; int /*<<< orphan*/  state; int /*<<< orphan*/  stalls; int /*<<< orphan*/  starts; } ;

/* Variables and functions */
 scalar_t__ ABDICATED ; 
 scalar_t__ BUSY ; 
 scalar_t__ IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STALLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct ifmp_ring*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (union ring_state,int) ; 
 int FUNC8 (struct ifmp_ring*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct ifmp_ring *r, union ring_state os, uint16_t prev, int budget)
{
	union ring_state ns;
	int n, pending, total;
	uint16_t cidx = os.cidx;
	uint16_t pidx = os.pidx_tail;

	FUNC0(os.flags == BUSY);
	FUNC0(cidx != pidx);

	if (prev == IDLE)
		FUNC3(r->starts, 1);
	pending = 0;
	total = 0;

	while (cidx != pidx) {

		/* Items from cidx to pidx are available for consumption. */
		n = r->drain(r, cidx, pidx);
		if (n == 0) {
			FUNC4();
			os.state = r->state;
			do {
				ns.state = os.state;
				ns.cidx = cidx;
				ns.flags = STALLED;
			} while (FUNC1(&r->state, &os.state,
			    ns.state) == 0);
			FUNC5();
			if (prev != STALLED)
				FUNC3(r->stalls, 1);
			else if (total > 0) {
				FUNC3(r->restarts, 1);
				FUNC3(r->stalls, 1);
			}
			break;
		}
		cidx = FUNC6(r, cidx, n);
		pending += n;
		total += n;

		/*
		 * We update the cidx only if we've caught up with the pidx, the
		 * real cidx is getting too far ahead of the one visible to
		 * everyone else, or we have exceeded our budget.
		 */
		if (cidx != pidx && pending < 64 && total < budget)
			continue;
		FUNC4();
		os.state = r->state;
		do {
			ns.state = os.state;
			ns.cidx = cidx;
			ns.flags = FUNC7(ns, total >= budget);
		} while (FUNC2(&r->state, &os.state,
		    ns.state) == 0);
		FUNC5();

		if (ns.flags == ABDICATED)
			FUNC3(r->abdications, 1);
		if (ns.flags != BUSY) {
			/* Wrong loop exit if we're going to stall. */
			FUNC0(ns.flags != STALLED);
			if (prev == STALLED) {
				FUNC0(total > 0);
				FUNC3(r->restarts, 1);
			}
			break;
		}

		/*
		 * The acquire style atomic above guarantees visibility of items
		 * associated with any pidx change that we notice here.
		 */
		pidx = ns.pidx_tail;
		pending = 0;
	}
}