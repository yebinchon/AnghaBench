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
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwcur; scalar_t__ nr_hwtail; struct netmap_adapter* na; } ;
struct netmap_adapter {int /*<<< orphan*/  ifp; } ;
struct mbq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_kring*,struct mbq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbq*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct netmap_kring *kring, int flags)
{
	struct netmap_adapter *na = kring->na;
	u_int const lim = kring->nkr_num_slots - 1;
	u_int const head = kring->rhead;
	struct mbq q;

	/* Take packets from hwcur to head and pass them up.
	 * Force hwcur = head since netmap_grab_packets() stops at head
	 */
	FUNC0(&q);
	FUNC2(kring, &q, 1 /* force */);
	FUNC4("have %d pkts in queue", FUNC1(&q));
	kring->nr_hwcur = head;
	kring->nr_hwtail = head + lim;
	if (kring->nr_hwtail > lim)
		kring->nr_hwtail -= lim + 1;

	FUNC3(na->ifp, &q);
	return 0;
}