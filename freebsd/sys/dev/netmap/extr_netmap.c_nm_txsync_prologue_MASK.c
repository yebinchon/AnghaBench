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
typedef  scalar_t__ u_int ;
struct netmap_ring {scalar_t__ head; scalar_t__ cur; scalar_t__ tail; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ nr_hwcur; scalar_t__ nr_hwtail; scalar_t__ rhead; scalar_t__ rtail; scalar_t__ rcur; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

u_int
FUNC3(struct netmap_kring *kring, struct netmap_ring *ring)
{
	u_int head = ring->head; /* read only once */
	u_int cur = ring->cur; /* read only once */
	u_int n = kring->nkr_num_slots;

	FUNC1(5, "%s kcur %d ktail %d head %d cur %d tail %d",
		kring->name,
		kring->nr_hwcur, kring->nr_hwtail,
		ring->head, ring->cur, ring->tail);
#if 1 /* kernel sanity checks; but we can trust the kring. */
	FUNC0(kring->nr_hwcur >= n || kring->rhead >= n ||
	    kring->rtail >= n ||  kring->nr_hwtail >= n);
#endif /* kernel sanity checks */
	/*
	 * user sanity checks. We only use head,
	 * A, B, ... are possible positions for head:
	 *
	 *  0    A  rhead   B  rtail   C  n-1
	 *  0    D  rtail   E  rhead   F  n-1
	 *
	 * B, F, D are valid. A, C, E are wrong
	 */
	if (kring->rtail >= kring->rhead) {
		/* want rhead <= head <= rtail */
		FUNC0(head < kring->rhead || head > kring->rtail);
		/* and also head <= cur <= rtail */
		FUNC0(cur < head || cur > kring->rtail);
	} else { /* here rtail < rhead */
		/* we need head outside rtail .. rhead */
		FUNC0(head > kring->rtail && head < kring->rhead);

		/* two cases now: head <= rtail or head >= rhead  */
		if (head <= kring->rtail) {
			/* want head <= cur <= rtail */
			FUNC0(cur < head || cur > kring->rtail);
		} else { /* head >= rhead */
			/* cur must be outside rtail..head */
			FUNC0(cur > kring->rtail && cur < head);
		}
	}
	if (ring->tail != kring->rtail) {
		FUNC2(5, "%s tail overwritten was %d need %d", kring->name,
			ring->tail, kring->rtail);
		ring->tail = kring->rtail;
	}
	kring->rhead = head;
	kring->rcur = cur;
	return head;
}