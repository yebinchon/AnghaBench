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
struct ubsec_softc {int /*<<< orphan*/  sc_freequeue; } ;
struct ubsec_q {int q_nstacked_mcrs; scalar_t__ q_crp; int /*<<< orphan*/ * q_dst_m; int /*<<< orphan*/ * q_src_m; struct ubsec_q** q_stacked_mcr; } ;
struct cryptop {void* crp_etype; } ;

/* Variables and functions */
 void* EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ubsec_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  q_next ; 

__attribute__((used)) static int
FUNC3(struct ubsec_softc *sc, struct ubsec_q *q)
{
	struct ubsec_q *q2;
	struct cryptop *crp;
	int npkts;
	int i;

	npkts = q->q_nstacked_mcrs;

	for (i = 0; i < npkts; i++) {
		if(q->q_stacked_mcr[i]) {
			q2 = q->q_stacked_mcr[i];

			if ((q2->q_dst_m != NULL) && (q2->q_src_m != q2->q_dst_m))
				FUNC2(q2->q_dst_m);

			crp = (struct cryptop *)q2->q_crp;

			FUNC0(&sc->sc_freequeue, q2, q_next);

			crp->crp_etype = EFAULT;
			FUNC1(crp);
		} else {
			break;
		}
	}

	/*
	 * Free header MCR
	 */
	if ((q->q_dst_m != NULL) && (q->q_src_m != q->q_dst_m))
		FUNC2(q->q_dst_m);

	crp = (struct cryptop *)q->q_crp;

	FUNC0(&sc->sc_freequeue, q, q_next);

	crp->crp_etype = EFAULT;
	FUNC1(crp);
	return(0);
}