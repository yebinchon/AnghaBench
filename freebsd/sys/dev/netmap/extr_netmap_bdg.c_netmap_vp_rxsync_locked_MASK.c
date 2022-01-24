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
struct netmap_slot {int /*<<< orphan*/  flags; int /*<<< orphan*/  buf_idx; } ;
struct netmap_ring {struct netmap_slot* slot; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwcur; struct netmap_adapter* na; struct netmap_ring* ring; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct netmap_adapter*) ; 
 void* FUNC1 (struct netmap_adapter*,struct netmap_slot*) ; 
 int /*<<< orphan*/  NS_BUF_CHANGED ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct netmap_kring*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(struct netmap_kring *kring, int flags)
{
	struct netmap_adapter *na = kring->na;
	struct netmap_ring *ring = kring->ring;
	u_int nm_i, lim = kring->nkr_num_slots - 1;
	u_int head = kring->rhead;
	int n;

	if (head > lim) {
		FUNC5("ouch dangerous reset!!!");
		n = FUNC3(kring);
		goto done;
	}

	/* First part, import newly received packets. */
	/* actually nothing to do here, they are already in the kring */

	/* Second part, skip past packets that userspace has released. */
	nm_i = kring->nr_hwcur;
	if (nm_i != head) {
		/* consistency check, but nothing really important here */
		for (n = 0; FUNC2(nm_i != head); n++) {
			struct netmap_slot *slot = &ring->slot[nm_i];
			void *addr = FUNC1(na, slot);

			if (addr == FUNC0(kring->na)) { /* bad buf */
				FUNC5("bad buffer index %d, ignore ?",
					slot->buf_idx);
			}
			slot->flags &= ~NS_BUF_CHANGED;
			nm_i = FUNC4(nm_i, lim);
		}
		kring->nr_hwcur = head;
	}

	n = 0;
done:
	return n;
}