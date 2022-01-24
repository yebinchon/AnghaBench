#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
struct ubsec_softc {int sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_q2free; int /*<<< orphan*/  sc_rnghz; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_rndtest; int /*<<< orphan*/  (* sc_harvest ) (int /*<<< orphan*/ ,scalar_t__,int) ;} ;
struct TYPE_6__ {int dma_size; scalar_t__ dma_vaddr; } ;
struct TYPE_8__ {TYPE_2__ q_ctx; } ;
struct TYPE_7__ {int dma_size; scalar_t__ dma_vaddr; } ;
struct ubsec_q2_rsapriv {TYPE_4__ rpr_q; TYPE_3__ rpr_msgout; TYPE_3__ rpr_msgin; struct cryptkop* rpr_krp; } ;
struct ubsec_q2_rng {int /*<<< orphan*/  rng_used; TYPE_3__ rng_buf; } ;
struct ubsec_q2_modexp {TYPE_4__ me_q; TYPE_3__ me_C; TYPE_3__ me_M; TYPE_3__ me_E; int /*<<< orphan*/  me_normbits; int /*<<< orphan*/  me_shiftbits; int /*<<< orphan*/  me_modbits; TYPE_3__ me_epb; struct cryptkop* me_krp; } ;
struct ubsec_q2 {int q_type; TYPE_3__ q_ctx; } ;
struct ubsec_ctx_keyop {int /*<<< orphan*/  ctx_op; } ;
struct cryptkop {size_t krp_iparams; TYPE_1__* krp_param; int /*<<< orphan*/  krp_status; } ;
struct TYPE_5__ {scalar_t__ crp_p; int /*<<< orphan*/  crp_nbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int UBSEC_RNG_BUFSIZ ; 
#define  UBS_CTXOP_MODEXP 130 
#define  UBS_CTXOP_RNGBYPASS 129 
#define  UBS_CTXOP_RSAPRIV 128 
 int UBS_FLAGS_HWNORM ; 
 size_t UBS_RSAPRIV_PAR_MSGOUT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptkop*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ubsec_rng ; 

__attribute__((used)) static void
FUNC10(struct ubsec_softc *sc, struct ubsec_q2 *q)
{
	struct cryptkop *krp;
	struct ubsec_ctx_keyop *ctx;

	ctx = (struct ubsec_ctx_keyop *)q->q_ctx.dma_vaddr;
	FUNC8(&q->q_ctx, BUS_DMASYNC_POSTWRITE);

	switch (q->q_type) {
#ifndef UBSEC_NO_RNG
	case UBS_CTXOP_RNGBYPASS: {
		struct ubsec_q2_rng *rng = (struct ubsec_q2_rng *)q;

		FUNC8(&rng->rng_buf, BUS_DMASYNC_POSTREAD);
		(*sc->sc_harvest)(sc->sc_rndtest,
			rng->rng_buf.dma_vaddr,
			UBSEC_RNG_BUFSIZ*sizeof (u_int32_t));
		rng->rng_used = 0;
		FUNC3(&sc->sc_rngto, sc->sc_rnghz, ubsec_rng, sc);
		break;
	}
#endif
	case UBS_CTXOP_MODEXP: {
		struct ubsec_q2_modexp *me = (struct ubsec_q2_modexp *)q;
		u_int rlen, clen;

		krp = me->me_krp;
		rlen = (me->me_modbits + 7) / 8;
		clen = (krp->krp_param[krp->krp_iparams].crp_nbits + 7) / 8;

		FUNC8(&me->me_M, BUS_DMASYNC_POSTWRITE);
		FUNC8(&me->me_E, BUS_DMASYNC_POSTWRITE);
		FUNC8(&me->me_C, BUS_DMASYNC_POSTREAD);
		FUNC8(&me->me_epb, BUS_DMASYNC_POSTWRITE);

		if (clen < rlen)
			krp->krp_status = E2BIG;
		else {
			if (sc->sc_flags & UBS_FLAGS_HWNORM) {
				FUNC2(krp->krp_param[krp->krp_iparams].crp_p,
				    (krp->krp_param[krp->krp_iparams].crp_nbits
					+ 7) / 8);
				FUNC1(me->me_C.dma_vaddr,
				    krp->krp_param[krp->krp_iparams].crp_p,
				    (me->me_modbits + 7) / 8);
			} else
				FUNC9(me->me_shiftbits,
				    me->me_C.dma_vaddr, me->me_normbits,
				    krp->krp_param[krp->krp_iparams].crp_p,
				    krp->krp_param[krp->krp_iparams].crp_nbits);
		}

		FUNC4(krp);

		/* bzero all potentially sensitive data */
		FUNC2(me->me_E.dma_vaddr, me->me_E.dma_size);
		FUNC2(me->me_M.dma_vaddr, me->me_M.dma_size);
		FUNC2(me->me_C.dma_vaddr, me->me_C.dma_size);
		FUNC2(me->me_q.q_ctx.dma_vaddr, me->me_q.q_ctx.dma_size);

		/* Can't free here, so put us on the free list. */
		FUNC0(&sc->sc_q2free, &me->me_q, q_next);
		break;
	}
	case UBS_CTXOP_RSAPRIV: {
		struct ubsec_q2_rsapriv *rp = (struct ubsec_q2_rsapriv *)q;
		u_int len;

		krp = rp->rpr_krp;
		FUNC8(&rp->rpr_msgin, BUS_DMASYNC_POSTWRITE);
		FUNC8(&rp->rpr_msgout, BUS_DMASYNC_POSTREAD);

		len = (krp->krp_param[UBS_RSAPRIV_PAR_MSGOUT].crp_nbits + 7) / 8;
		FUNC1(rp->rpr_msgout.dma_vaddr,
		    krp->krp_param[UBS_RSAPRIV_PAR_MSGOUT].crp_p, len);

		FUNC4(krp);

		FUNC2(rp->rpr_msgin.dma_vaddr, rp->rpr_msgin.dma_size);
		FUNC2(rp->rpr_msgout.dma_vaddr, rp->rpr_msgout.dma_size);
		FUNC2(rp->rpr_q.q_ctx.dma_vaddr, rp->rpr_q.q_ctx.dma_size);

		/* Can't free here, so put us on the free list. */
		FUNC0(&sc->sc_q2free, &rp->rpr_q, q_next);
		break;
	}
	default:
		FUNC5(sc->sc_dev, "unknown ctx op: %x\n",
		    FUNC6(ctx->ctx_op));
		break;
	}
}