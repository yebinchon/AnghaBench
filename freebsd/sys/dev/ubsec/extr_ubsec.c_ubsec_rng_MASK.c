#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_9__ {int dma_paddr; scalar_t__ dma_vaddr; } ;
struct TYPE_8__ {scalar_t__ dma_vaddr; } ;
struct TYPE_14__ {int q_type; TYPE_2__ q_ctx; TYPE_1__ q_mcr; } ;
struct TYPE_13__ {int dma_paddr; } ;
struct ubsec_q2_rng {int rng_used; TYPE_7__ rng_q; TYPE_6__ rng_buf; } ;
struct ubsec_softc {scalar_t__ sc_nqueue2; int /*<<< orphan*/  sc_rnghz; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_mcr2lock; int /*<<< orphan*/  sc_queue2; struct ubsec_q2_rng sc_rng; } ;
struct TYPE_11__ {scalar_t__ pb_next; void* pb_len; void* pb_addr; } ;
struct TYPE_10__ {scalar_t__ pb_len; scalar_t__ pb_next; scalar_t__ pb_addr; } ;
struct ubsec_mcr {TYPE_4__ mcr_opktbuf; scalar_t__ mcr_pktlen; scalar_t__ mcr_reserved; TYPE_3__ mcr_ipktbuf; void* mcr_cmdctxp; scalar_t__ mcr_flags; void* mcr_pkts; } ;
struct ubsec_ctx_rngbypass {void* rbp_op; void* rbp_len; } ;
struct TYPE_12__ {int /*<<< orphan*/  hst_rng; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int UBSEC_RNG_BUFSIZ ; 
 int UBS_CTXOP_RNGBYPASS ; 
 scalar_t__ UBS_MAX_NQUEUE ; 
 int UBS_PKTBUF_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ubsec_softc*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubsec_softc*) ; 
 TYPE_5__ ubsecstats ; 

__attribute__((used)) static void
FUNC8(void *vsc)
{
	struct ubsec_softc *sc = vsc;
	struct ubsec_q2_rng *rng = &sc->sc_rng;
	struct ubsec_mcr *mcr;
	struct ubsec_ctx_rngbypass *ctx;

	FUNC4(&sc->sc_mcr2lock);
	if (rng->rng_used) {
		FUNC5(&sc->sc_mcr2lock);
		return;
	}
	sc->sc_nqueue2++;
	if (sc->sc_nqueue2 >= UBS_MAX_NQUEUE)
		goto out;

	mcr = (struct ubsec_mcr *)rng->rng_q.q_mcr.dma_vaddr;
	ctx = (struct ubsec_ctx_rngbypass *)rng->rng_q.q_ctx.dma_vaddr;

	mcr->mcr_pkts = FUNC2(1);
	mcr->mcr_flags = 0;
	mcr->mcr_cmdctxp = FUNC3(rng->rng_q.q_ctx.dma_paddr);
	mcr->mcr_ipktbuf.pb_addr = mcr->mcr_ipktbuf.pb_next = 0;
	mcr->mcr_ipktbuf.pb_len = 0;
	mcr->mcr_reserved = mcr->mcr_pktlen = 0;
	mcr->mcr_opktbuf.pb_addr = FUNC3(rng->rng_buf.dma_paddr);
	mcr->mcr_opktbuf.pb_len = FUNC3(((sizeof(u_int32_t) * UBSEC_RNG_BUFSIZ)) &
	    UBS_PKTBUF_LEN);
	mcr->mcr_opktbuf.pb_next = 0;

	ctx->rbp_len = FUNC2(sizeof(struct ubsec_ctx_rngbypass));
	ctx->rbp_op = FUNC2(UBS_CTXOP_RNGBYPASS);
	rng->rng_q.q_type = UBS_CTXOP_RNGBYPASS;

	FUNC6(&rng->rng_buf, BUS_DMASYNC_PREREAD);

	FUNC0(&sc->sc_queue2, &rng->rng_q, q_next);
	rng->rng_used = 1;
	FUNC7(sc);
	ubsecstats.hst_rng++;
	FUNC5(&sc->sc_mcr2lock);

	return;

out:
	/*
	 * Something weird happened, generate our own call back.
	 */
	sc->sc_nqueue2--;
	FUNC5(&sc->sc_mcr2lock);
	FUNC1(&sc->sc_rngto, sc->sc_rnghz, ubsec_rng, sc);
}