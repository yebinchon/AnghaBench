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
struct tcpcb {int /*<<< orphan*/  t_inpcb; struct tcp_log_id_bucket* t_lib; } ;
struct tcp_log_id_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_log_id_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_log_id_bucket*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  TREE_RLOCKED 129 
 int TREE_UNLOCKED ; 
#define  TREE_WLOCKED 128 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_log_id_bucket*,char*) ; 
 scalar_t__ FUNC8 (struct tcp_log_id_bucket*,int*,int /*<<< orphan*/ *) ; 

void
FUNC9(struct tcpcb *tp, char *reason)
{
	struct tcp_log_id_bucket *tlb;
	int tree_locked;

	/* Figure out our bucket and lock it. */
	FUNC0(tp->t_inpcb);
	tlb = tp->t_lib;
	if (tlb == NULL) {
		/*
		 * No bucket; treat this like a request to dump a single
		 * session's traces.
		 */
		(void)FUNC6(tp, reason, M_WAITOK, true);
		FUNC1(tp->t_inpcb);
		return;
	}
	FUNC3(tlb);
	FUNC1(tp->t_inpcb);
	FUNC2(tlb);

	/* If we are the last reference, we have nothing more to do here. */
	tree_locked = TREE_UNLOCKED;
	if (FUNC8(tlb, &tree_locked, NULL)) {
		switch (tree_locked) {
		case TREE_WLOCKED:
			FUNC5();
			break;
		case TREE_RLOCKED:
			FUNC4();
			break;
		}
		return;
	}

	/* Turn this over to tcp_log_dumpbucketlogs() to finish the work. */ 
	FUNC7(tlb, reason);
}