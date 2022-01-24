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
struct netmap_kring {size_t ring_id; size_t nkr_num_slots; char* name; int (* nm_sync ) (struct netmap_kring*,int) ;int /*<<< orphan*/  rtail; int /*<<< orphan*/  nr_hwtail; int /*<<< orphan*/  nr_hwcur; int /*<<< orphan*/  rcur; int /*<<< orphan*/  rhead; int /*<<< orphan*/  nkr_hwlease; struct netmap_adapter* na; } ;
struct netmap_bwrap_adapter {struct netmap_adapter* hwna; } ;
struct netmap_adapter {char* name; struct netmap_kring** tx_rings; struct netmap_bwrap_adapter* na_private; } ;

/* Variables and functions */
 int ENXIO ; 
 int NM_IRQ_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_kring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_kring*) ; 
 scalar_t__ FUNC2 (struct netmap_kring*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int FUNC5 (struct netmap_kring*,int) ; 

int
FUNC6(struct netmap_kring *kring, int flags)
{
	struct netmap_adapter *na = kring->na;
	struct netmap_bwrap_adapter *bna = na->na_private;
	struct netmap_adapter *hwna = bna->hwna;
	u_int ring_n = kring->ring_id;
	u_int lim = kring->nkr_num_slots - 1;
	struct netmap_kring *hw_kring;
	int error;

	FUNC4("%s: na %s hwna %s",
			(kring ? kring->name : "NULL!"),
			(na ? na->name : "NULL!"),
			(hwna ? hwna->name : "NULL!"));
	hw_kring = hwna->tx_rings[ring_n];

	if (FUNC2(hw_kring, 0, NULL)) {
		return ENXIO;
	}

	/* first step: simulate a user wakeup on the rx ring */
	FUNC0(kring, flags);
	FUNC4("%s[%d] PRE rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)",
		na->name, ring_n,
		kring->nr_hwcur, kring->nr_hwtail, kring->nkr_hwlease,
		kring->rhead, kring->rcur, kring->rtail,
		hw_kring->nr_hwcur, hw_kring->nr_hwtail, hw_kring->rtail);
	/* second step: the new packets are sent on the tx ring
	 * (which is actually the same ring)
	 */
	hw_kring->rhead = hw_kring->rcur = kring->nr_hwtail;
	error = hw_kring->nm_sync(hw_kring, flags);
	if (error)
		goto put_out;

	/* third step: now we are back the rx ring */
	/* claim ownership on all hw owned bufs */
	kring->rhead = kring->rcur = FUNC3(hw_kring->nr_hwtail, lim); /* skip past reserved slot */

	/* fourth step: the user goes to sleep again, causing another rxsync */
	FUNC0(kring, flags);
	FUNC4("%s[%d] PST rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)",
		na->name, ring_n,
		kring->nr_hwcur, kring->nr_hwtail, kring->nkr_hwlease,
		kring->rhead, kring->rcur, kring->rtail,
		hw_kring->nr_hwcur, hw_kring->nr_hwtail, hw_kring->rtail);
put_out:
	FUNC1(hw_kring);

	return error ? error : NM_IRQ_COMPLETED;
}