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
struct pfr_walktree {int /*<<< orphan*/  pfrw_op; } ;
struct pfr_ktable {TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct TYPE_4__ {int /*<<< orphan*/  rh; scalar_t__ (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  rh; scalar_t__ (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PFRW_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct pfr_walktree*,int) ; 
 int /*<<< orphan*/  pfr_walktree ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pfr_walktree*) ; 

__attribute__((used)) static void
FUNC4(struct pfr_ktable *kt)
{
	struct pfr_walktree	w;

	FUNC0(&w, sizeof(w));
	w.pfrw_op = PFRW_MARK;
	if (kt->pfrkt_ip4->rnh_walktree(&kt->pfrkt_ip4->rh, pfr_walktree, &w))
		FUNC1("pfr_mark_addrs: IPv4 walktree failed.\n");
	if (kt->pfrkt_ip6->rnh_walktree(&kt->pfrkt_ip6->rh, pfr_walktree, &w))
		FUNC1("pfr_mark_addrs: IPv6 walktree failed.\n");
}