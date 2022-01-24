#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int u_int ;
struct ubsec_softc {int sc_flags; int /*<<< orphan*/  sc_mcr2lock; int /*<<< orphan*/  sc_queue2; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_13__ {int dma_paddr; int dma_size; struct ubsec_q2_rsapriv* dma_vaddr; int /*<<< orphan*/ * dma_tag; } ;
struct TYPE_14__ {int q_type; TYPE_5__ q_mcr; TYPE_5__ q_ctx; } ;
struct ubsec_q2_rsapriv {int rpr_len; TYPE_5__ rpr_msgout; TYPE_5__ rpr_msgin; TYPE_8__ rpr_q; void* rpr_p_len; void* rpr_q_len; void* rpr_op; struct ubsec_q2_rsapriv* rpr_buf; struct cryptkop* rpr_krp; } ;
struct TYPE_10__ {void* pb_len; scalar_t__ pb_next; void* pb_addr; } ;
struct TYPE_9__ {void* pb_len; scalar_t__ pb_next; void* pb_addr; } ;
struct ubsec_mcr {TYPE_2__ mcr_opktbuf; void* mcr_pktlen; scalar_t__ mcr_reserved; TYPE_1__ mcr_ipktbuf; void* mcr_cmdctxp; scalar_t__ mcr_flags; void* mcr_pkts; } ;
struct ubsec_ctx_rsapriv {int rpr_len; TYPE_5__ rpr_msgout; TYPE_5__ rpr_msgin; TYPE_8__ rpr_q; void* rpr_p_len; void* rpr_q_len; void* rpr_op; struct ubsec_ctx_rsapriv* rpr_buf; struct cryptkop* rpr_krp; } ;
struct cryptkop {int krp_status; TYPE_4__* krp_param; } ;
struct TYPE_12__ {int crp_nbits; int /*<<< orphan*/  crp_p; } ;
struct TYPE_11__ {int /*<<< orphan*/  hst_modexpcrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int UBS_CTXOP_RSAPRIV ; 
 int UBS_FLAGS_BIGKEY ; 
 size_t UBS_RSAPRIV_PAR_DP ; 
 size_t UBS_RSAPRIV_PAR_DQ ; 
 size_t UBS_RSAPRIV_PAR_MSGIN ; 
 size_t UBS_RSAPRIV_PAR_MSGOUT ; 
 size_t UBS_RSAPRIV_PAR_P ; 
 size_t UBS_RSAPRIV_PAR_PINV ; 
 size_t UBS_RSAPRIV_PAR_Q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ubsec_q2_rsapriv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubsec_q2_rsapriv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cryptkop*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubsec_q2_rsapriv*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC12 (struct ubsec_softc*,TYPE_5__*) ; 
 scalar_t__ FUNC13 (struct ubsec_softc*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ubsec_softc*) ; 
 int FUNC16 (TYPE_4__*) ; 
 TYPE_3__ ubsecstats ; 

__attribute__((used)) static int
FUNC17(struct ubsec_softc *sc, struct cryptkop *krp, int hint)
{
	struct ubsec_q2_rsapriv *rp = NULL;
	struct ubsec_mcr *mcr;
	struct ubsec_ctx_rsapriv *ctx;
	int err = 0;
	u_int padlen, msglen;

	msglen = FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_P]);
	padlen = FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_Q]);
	if (msglen > padlen)
		padlen = msglen;

	if (padlen <= 256)
		padlen = 256;
	else if (padlen <= 384)
		padlen = 384;
	else if (padlen <= 512)
		padlen = 512;
	else if (sc->sc_flags & UBS_FLAGS_BIGKEY && padlen <= 768)
		padlen = 768;
	else if (sc->sc_flags & UBS_FLAGS_BIGKEY && padlen <= 1024)
		padlen = 1024;
	else {
		err = E2BIG;
		goto errout;
	}

	if (FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_DP]) > padlen) {
		err = E2BIG;
		goto errout;
	}

	if (FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_DQ]) > padlen) {
		err = E2BIG;
		goto errout;
	}

	if (FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_PINV]) > padlen) {
		err = E2BIG;
		goto errout;
	}

	rp = (struct ubsec_q2_rsapriv *)FUNC8(sizeof *rp, M_DEVBUF, M_NOWAIT);
	if (rp == NULL)
		return (ENOMEM);
	FUNC2(rp, sizeof *rp);
	rp->rpr_krp = krp;
	rp->rpr_q.q_type = UBS_CTXOP_RSAPRIV;

	if (FUNC13(sc, sizeof(struct ubsec_mcr),
	    &rp->rpr_q.q_mcr, 0)) {
		err = ENOMEM;
		goto errout;
	}
	mcr = (struct ubsec_mcr *)rp->rpr_q.q_mcr.dma_vaddr;

	if (FUNC13(sc, sizeof(struct ubsec_ctx_rsapriv),
	    &rp->rpr_q.q_ctx, 0)) {
		err = ENOMEM;
		goto errout;
	}
	ctx = (struct ubsec_ctx_rsapriv *)rp->rpr_q.q_ctx.dma_vaddr;
	FUNC2(ctx, sizeof *ctx);

	/* Copy in p */
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_P].crp_p,
	    &ctx->rpr_buf[0 * (padlen / 8)],
	    (krp->krp_param[UBS_RSAPRIV_PAR_P].crp_nbits + 7) / 8);

	/* Copy in q */
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_Q].crp_p,
	    &ctx->rpr_buf[1 * (padlen / 8)],
	    (krp->krp_param[UBS_RSAPRIV_PAR_Q].crp_nbits + 7) / 8);

	/* Copy in dp */
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_DP].crp_p,
	    &ctx->rpr_buf[2 * (padlen / 8)],
	    (krp->krp_param[UBS_RSAPRIV_PAR_DP].crp_nbits + 7) / 8);

	/* Copy in dq */
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_DQ].crp_p,
	    &ctx->rpr_buf[3 * (padlen / 8)],
	    (krp->krp_param[UBS_RSAPRIV_PAR_DQ].crp_nbits + 7) / 8);

	/* Copy in pinv */
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_PINV].crp_p,
	    &ctx->rpr_buf[4 * (padlen / 8)],
	    (krp->krp_param[UBS_RSAPRIV_PAR_PINV].crp_nbits + 7) / 8);

	msglen = padlen * 2;

	/* Copy in input message (aligned buffer/length). */
	if (FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_MSGIN]) > msglen) {
		/* Is this likely? */
		err = E2BIG;
		goto errout;
	}
	if (FUNC13(sc, (msglen + 7) / 8, &rp->rpr_msgin, 0)) {
		err = ENOMEM;
		goto errout;
	}
	FUNC2(rp->rpr_msgin.dma_vaddr, (msglen + 7) / 8);
	FUNC1(krp->krp_param[UBS_RSAPRIV_PAR_MSGIN].crp_p,
	    rp->rpr_msgin.dma_vaddr,
	    (krp->krp_param[UBS_RSAPRIV_PAR_MSGIN].crp_nbits + 7) / 8);

	/* Prepare space for output message (aligned buffer/length). */
	if (FUNC16(&krp->krp_param[UBS_RSAPRIV_PAR_MSGOUT]) < msglen) {
		/* Is this likely? */
		err = E2BIG;
		goto errout;
	}
	if (FUNC13(sc, (msglen + 7) / 8, &rp->rpr_msgout, 0)) {
		err = ENOMEM;
		goto errout;
	}
	FUNC2(rp->rpr_msgout.dma_vaddr, (msglen + 7) / 8);

	mcr->mcr_pkts = FUNC6(1);
	mcr->mcr_flags = 0;
	mcr->mcr_cmdctxp = FUNC7(rp->rpr_q.q_ctx.dma_paddr);
	mcr->mcr_ipktbuf.pb_addr = FUNC7(rp->rpr_msgin.dma_paddr);
	mcr->mcr_ipktbuf.pb_next = 0;
	mcr->mcr_ipktbuf.pb_len = FUNC7(rp->rpr_msgin.dma_size);
	mcr->mcr_reserved = 0;
	mcr->mcr_pktlen = FUNC6(msglen);
	mcr->mcr_opktbuf.pb_addr = FUNC7(rp->rpr_msgout.dma_paddr);
	mcr->mcr_opktbuf.pb_next = 0;
	mcr->mcr_opktbuf.pb_len = FUNC7(rp->rpr_msgout.dma_size);

#ifdef DIAGNOSTIC
	if (rp->rpr_msgin.dma_paddr & 3 || rp->rpr_msgin.dma_size & 3) {
		panic("%s: rsapriv: invalid msgin %x(0x%jx)",
		    device_get_nameunit(sc->sc_dev),
		    rp->rpr_msgin.dma_paddr, (uintmax_t)rp->rpr_msgin.dma_size);
	}
	if (rp->rpr_msgout.dma_paddr & 3 || rp->rpr_msgout.dma_size & 3) {
		panic("%s: rsapriv: invalid msgout %x(0x%jx)",
		    device_get_nameunit(sc->sc_dev),
		    rp->rpr_msgout.dma_paddr, (uintmax_t)rp->rpr_msgout.dma_size);
	}
#endif

	ctx->rpr_len = (sizeof(u_int16_t) * 4) + (5 * (padlen / 8));
	ctx->rpr_op = FUNC6(UBS_CTXOP_RSAPRIV);
	ctx->rpr_q_len = FUNC6(padlen);
	ctx->rpr_p_len = FUNC6(padlen);

	/*
	 * ubsec_feed2 will sync mcr and ctx, we just need to sync
	 * everything else.
	 */
	FUNC14(&rp->rpr_msgin, BUS_DMASYNC_PREWRITE);
	FUNC14(&rp->rpr_msgout, BUS_DMASYNC_PREREAD);

	/* Enqueue and we're done... */
	FUNC9(&sc->sc_mcr2lock);
	FUNC0(&sc->sc_queue2, &rp->rpr_q, q_next);
	FUNC15(sc);
	ubsecstats.hst_modexpcrt++;
	FUNC10(&sc->sc_mcr2lock);
	return (0);

errout:
	if (rp != NULL) {
		if (rp->rpr_q.q_mcr.dma_tag != NULL)
			FUNC12(sc, &rp->rpr_q.q_mcr);
		if (rp->rpr_msgin.dma_tag != NULL) {
			FUNC2(rp->rpr_msgin.dma_vaddr, rp->rpr_msgin.dma_size);
			FUNC12(sc, &rp->rpr_msgin);
		}
		if (rp->rpr_msgout.dma_tag != NULL) {
			FUNC2(rp->rpr_msgout.dma_vaddr, rp->rpr_msgout.dma_size);
			FUNC12(sc, &rp->rpr_msgout);
		}
		FUNC5(rp, M_DEVBUF);
	}
	krp->krp_status = err;
	FUNC3(krp);
	return (0);
}