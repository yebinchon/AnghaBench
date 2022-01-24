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
struct tcphdr {int /*<<< orphan*/  th_ack; } ;
struct tcpcb {scalar_t__ t_bytes_acked; TYPE_1__* ccv; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* post_recovery ) (TYPE_1__*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  curack; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void inline
FUNC3(struct tcpcb *tp, struct tcphdr *th)
{
	FUNC1(tp->t_inpcb);

	/* XXXLAS: KASSERT that we're in recovery? */

	if (FUNC0(tp)->post_recovery != NULL) {
		tp->ccv->curack = th->th_ack;
		FUNC0(tp)->post_recovery(tp->ccv);
	}
	/* XXXLAS: EXIT_RECOVERY ? */
	tp->t_bytes_acked = 0;
}