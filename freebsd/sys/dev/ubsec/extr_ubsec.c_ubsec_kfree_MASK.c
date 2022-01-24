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
struct ubsec_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_ctx; int /*<<< orphan*/  q_mcr; } ;
struct TYPE_3__ {int /*<<< orphan*/  q_ctx; int /*<<< orphan*/  q_mcr; } ;
struct ubsec_q2_rsapriv {int /*<<< orphan*/  rpr_msgout; int /*<<< orphan*/  rpr_msgin; TYPE_2__ rpr_q; int /*<<< orphan*/  me_epb; int /*<<< orphan*/  me_C; int /*<<< orphan*/  me_E; int /*<<< orphan*/  me_M; TYPE_1__ me_q; } ;
struct ubsec_q2_modexp {int /*<<< orphan*/  rpr_msgout; int /*<<< orphan*/  rpr_msgin; TYPE_2__ rpr_q; int /*<<< orphan*/  me_epb; int /*<<< orphan*/  me_C; int /*<<< orphan*/  me_E; int /*<<< orphan*/  me_M; TYPE_1__ me_q; } ;
struct ubsec_q2 {int q_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
#define  UBS_CTXOP_MODEXP 129 
#define  UBS_CTXOP_RSAPRIV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubsec_q2_rsapriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubsec_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ubsec_softc *sc, struct ubsec_q2 *q)
{
	switch (q->q_type) {
	case UBS_CTXOP_MODEXP: {
		struct ubsec_q2_modexp *me = (struct ubsec_q2_modexp *)q;

		FUNC2(sc, &me->me_q.q_mcr);
		FUNC2(sc, &me->me_q.q_ctx);
		FUNC2(sc, &me->me_M);
		FUNC2(sc, &me->me_E);
		FUNC2(sc, &me->me_C);
		FUNC2(sc, &me->me_epb);
		FUNC1(me, M_DEVBUF);
		break;
	}
	case UBS_CTXOP_RSAPRIV: {
		struct ubsec_q2_rsapriv *rp = (struct ubsec_q2_rsapriv *)q;

		FUNC2(sc, &rp->rpr_q.q_mcr);
		FUNC2(sc, &rp->rpr_q.q_ctx);
		FUNC2(sc, &rp->rpr_msgin);
		FUNC2(sc, &rp->rpr_msgout);
		FUNC1(rp, M_DEVBUF);
		break;
	}
	default:
		FUNC0(sc->sc_dev, "invalid kfree 0x%x\n", q->q_type);
		break;
	}
}