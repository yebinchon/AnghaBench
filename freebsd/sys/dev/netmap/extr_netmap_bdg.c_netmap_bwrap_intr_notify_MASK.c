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
typedef  size_t u_int ;
struct TYPE_2__ {struct netmap_kring** tx_rings; } ;
struct netmap_vp_adapter {TYPE_1__ up; } ;
struct netmap_kring {size_t ring_id; int (* nm_sync ) (struct netmap_kring*,int) ;scalar_t__ nr_hwtail; scalar_t__ rcur; scalar_t__ rtail; scalar_t__ rhead; int /*<<< orphan*/  name; scalar_t__ nr_hwcur; struct netmap_adapter* na; } ;
struct netmap_bwrap_adapter {struct netmap_vp_adapter up; } ;
struct netmap_adapter {int /*<<< orphan*/  name; struct netmap_bwrap_adapter* na_private; } ;

/* Variables and functions */
 int EIO ; 
 int NM_DEBUG_RXINTR ; 
 int NM_IRQ_COMPLETED ; 
 int NM_IRQ_RESCHED ; 
 int netmap_debug ; 
 scalar_t__ netmap_verbose ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_kring*) ; 
 scalar_t__ FUNC1 (struct netmap_kring*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct netmap_kring*,int) ; 
 int FUNC5 (struct netmap_kring*,int) ; 
 int FUNC6 (struct netmap_kring*,int) ; 

__attribute__((used)) static int
FUNC7(struct netmap_kring *kring, int flags)
{
	struct netmap_adapter *na = kring->na;
	struct netmap_bwrap_adapter *bna = na->na_private;
	struct netmap_kring *bkring;
	struct netmap_vp_adapter *vpna = &bna->up;
	u_int ring_nr = kring->ring_id;
	int ret = NM_IRQ_COMPLETED;
	int error;

	if (netmap_debug & NM_DEBUG_RXINTR)
	    FUNC2("%s %s 0x%x", na->name, kring->name, flags);

	bkring = vpna->up.tx_rings[ring_nr];

	/* make sure the ring is not disabled */
	if (FUNC1(kring, 0 /* can't sleep */, NULL)) {
		return EIO;
	}

	if (netmap_debug & NM_DEBUG_RXINTR)
	    FUNC2("%s head %d cur %d tail %d",  na->name,
		kring->rhead, kring->rcur, kring->rtail);

	/* simulate a user wakeup on the rx ring
	 * fetch packets that have arrived.
	 */
	error = kring->nm_sync(kring, 0);
	if (error)
		goto put_out;
	if (kring->nr_hwcur == kring->nr_hwtail) {
		if (netmap_verbose)
			FUNC3(1, "interrupt with no packets on %s",
				kring->name);
		goto put_out;
	}

	/* new packets are kring->rcur to kring->nr_hwtail, and the bkring
	 * had hwcur == bkring->rhead. So advance bkring->rhead to kring->nr_hwtail
	 * to push all packets out.
	 */
	bkring->rhead = bkring->rcur = kring->nr_hwtail;

	bkring->nm_sync(bkring, flags);

	/* mark all buffers as released on this ring */
	kring->rhead = kring->rcur = kring->rtail = kring->nr_hwtail;
	/* another call to actually release the buffers */
	error = kring->nm_sync(kring, 0);

	/* The second rxsync may have further advanced hwtail. If this happens,
	 *  return NM_IRQ_RESCHED, otherwise just return NM_IRQ_COMPLETED. */
	if (kring->rcur != kring->nr_hwtail) {
		ret = NM_IRQ_RESCHED;
	}
put_out:
	FUNC0(kring);

	return error ? error : ret;
}