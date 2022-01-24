#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w ;
struct pfr_walktree {int pfrw_cnt; struct pfr_kentryworkq* pfrw_workq; int /*<<< orphan*/  pfrw_op; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rh; scalar_t__ (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  rh; scalar_t__ (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PFRW_ENQUEUE ; 
 int /*<<< orphan*/  PFRW_SWEEP ; 
 int /*<<< orphan*/  FUNC0 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_walktree*,int) ; 
 int /*<<< orphan*/  pfr_walktree ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ; 

__attribute__((used)) static void
FUNC5(struct pfr_ktable *kt, struct pfr_kentryworkq *workq,
	int *naddr, int sweep)
{
	struct pfr_walktree	w;

	FUNC0(workq);
	FUNC1(&w, sizeof(w));
	w.pfrw_op = sweep ? PFRW_SWEEP : PFRW_ENQUEUE;
	w.pfrw_workq = workq;
	if (kt->pfrkt_ip4 != NULL)
		if (kt->pfrkt_ip4->rnh_walktree(&kt->pfrkt_ip4->rh,
		    pfr_walktree, &w))
			FUNC2("pfr_enqueue_addrs: IPv4 walktree failed.\n");
	if (kt->pfrkt_ip6 != NULL)
		if (kt->pfrkt_ip6->rnh_walktree(&kt->pfrkt_ip6->rh,
		    pfr_walktree, &w))
			FUNC2("pfr_enqueue_addrs: IPv6 walktree failed.\n");
	if (naddr != NULL)
		*naddr = w.pfrw_cnt;
}