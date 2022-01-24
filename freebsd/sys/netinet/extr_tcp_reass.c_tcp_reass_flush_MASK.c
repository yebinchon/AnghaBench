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
struct tseg_qent {int /*<<< orphan*/  tqe_m; } ;
struct tcpcb {scalar_t__ t_segqlen; scalar_t__ t_segqmbuflen; int /*<<< orphan*/  t_segq; int /*<<< orphan*/  t_inpcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct tseg_qent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tseg_qent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_reass_zone ; 
 int /*<<< orphan*/  tqe_q ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tseg_qent*) ; 

void
FUNC6(struct tcpcb *tp)
{
	struct tseg_qent *qe;

	FUNC0(tp->t_inpcb);

	while ((qe = FUNC2(&tp->t_segq)) != NULL) {
		FUNC3(&tp->t_segq, qe, tqe_q);
		FUNC4(qe->tqe_m);
		FUNC5(tcp_reass_zone, qe);
		tp->t_segqlen--;
	}
	tp->t_segqmbuflen = 0;
	FUNC1((tp->t_segqlen == 0),
	    ("TCP reass queue %p segment count is %d instead of 0 after flush.",
	    tp, tp->t_segqlen));
}