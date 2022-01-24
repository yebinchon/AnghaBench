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
typedef  int u_int32_t ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;
struct hifn_softc {int sc_cmdu; size_t sc_resu; scalar_t__ sc_srcu; scalar_t__ sc_dstu; int sc_cmdi; int sc_dmaier; size_t sc_resi; scalar_t__ sc_curbatch; int sc_c_busy; int sc_s_busy; int sc_r_busy; int sc_d_busy; int sc_active; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_dev; struct hifn_command** sc_hifn_commands; struct hifn_dma* sc_dma; } ;
struct hifn_dma {TYPE_3__* resr; TYPE_2__* cmdr; int /*<<< orphan*/ * command_bufs; } ;
struct hifn_command {int sloplen; int src_mapsize; scalar_t__ src_nsegs; scalar_t__ dst_nsegs; int slopidx; int /*<<< orphan*/ * src_map; struct mbuf* dst_m; struct mbuf* src_m; int /*<<< orphan*/ * dst_map; int /*<<< orphan*/  dst; int /*<<< orphan*/  dst_io; int /*<<< orphan*/  src; int /*<<< orphan*/  src_io; } ;
struct cryptop {int crp_flags; } ;
struct TYPE_8__ {int hst_ibytes; scalar_t__ hst_maxbatch; int /*<<< orphan*/  hst_totbatch; int /*<<< orphan*/  hst_ipackets; int /*<<< orphan*/  hst_nomem_sd; int /*<<< orphan*/  hst_nomem_load; int /*<<< orphan*/  hst_nomem_map; int /*<<< orphan*/  hst_nomem_mcl; int /*<<< orphan*/  hst_nomem_mbuf; int /*<<< orphan*/  hst_unaligned; int /*<<< orphan*/  hst_nomem_cr; } ;
struct TYPE_7__ {void* l; } ;
struct TYPE_6__ {void* l; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int CRYPTO_HINT_MORE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTART ; 
 int /*<<< orphan*/  HIFN_1_DMA_CSR ; 
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_softc*,int,int) ; 
 int HIFN_DMACSR_C_CTRL_ENA ; 
 int HIFN_DMACSR_D_CTRL_ENA ; 
 int HIFN_DMACSR_R_CTRL_ENA ; 
 int HIFN_DMACSR_S_CTRL_ENA ; 
 int HIFN_DMAIER_C_WAIT ; 
 int HIFN_D_CMD_RSIZE ; 
 scalar_t__ HIFN_D_DST_RSIZE ; 
 int HIFN_D_JUMP ; 
 int HIFN_D_LAST ; 
 int HIFN_D_MASKDONEIRQ ; 
 size_t HIFN_D_RES_RSIZE ; 
 scalar_t__ HIFN_D_SRC_RSIZE ; 
 int HIFN_D_VALID ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_softc*) ; 
 int HIFN_MAX_RESULT ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hifn_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MHLEN ; 
 int MINCLSIZE ; 
 int MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_PKTHDR ; 
 int FUNC10 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ hifn_debug ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct hifn_softc*,struct hifn_command*) ; 
 int /*<<< orphan*/  FUNC21 (struct hifn_softc*,struct hifn_command*) ; 
 scalar_t__ hifn_maxbatch ; 
 int /*<<< orphan*/  hifn_op_cb ; 
 int FUNC22 (struct hifn_command*,int /*<<< orphan*/ ) ; 
 TYPE_4__ hifnstats ; 
 void* FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct mbuf*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC26 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static int 
FUNC28(
	struct hifn_softc *sc,
	struct hifn_command *cmd,
	struct cryptop *crp,
	int hint)
{
	struct	hifn_dma *dma = sc->sc_dma;
	u_int32_t cmdlen, csr;
	int cmdi, resi, err = 0;

	/*
	 * need 1 cmd, and 1 res
	 *
	 * NB: check this first since it's easy.
	 */
	FUNC2(sc);
	if ((sc->sc_cmdu + 1) > HIFN_D_CMD_RSIZE ||
	    (sc->sc_resu + 1) > HIFN_D_RES_RSIZE) {
#ifdef HIFN_DEBUG
		if (hifn_debug) {
			device_printf(sc->sc_dev,
				"cmd/result exhaustion, cmdu %u resu %u\n",
				sc->sc_cmdu, sc->sc_resu);
		}
#endif
		hifnstats.hst_nomem_cr++;
		FUNC5(sc);
		return (ERESTART);
	}

	if (FUNC12(sc->sc_dmat, BUS_DMA_NOWAIT, &cmd->src_map)) {
		hifnstats.hst_nomem_map++;
		FUNC5(sc);
		return (ENOMEM);
	}

	if (crp->crp_flags & CRYPTO_F_IMBUF) {
		if (FUNC14(sc->sc_dmat, cmd->src_map,
		    cmd->src_m, hifn_op_cb, &cmd->src, BUS_DMA_NOWAIT)) {
			hifnstats.hst_nomem_load++;
			err = ENOMEM;
			goto err_srcmap1;
		}
	} else if (crp->crp_flags & CRYPTO_F_IOV) {
		if (FUNC15(sc->sc_dmat, cmd->src_map,
		    cmd->src_io, hifn_op_cb, &cmd->src, BUS_DMA_NOWAIT)) {
			hifnstats.hst_nomem_load++;
			err = ENOMEM;
			goto err_srcmap1;
		}
	} else {
		err = EINVAL;
		goto err_srcmap1;
	}

	if (FUNC19(&cmd->src)) {
		cmd->sloplen = cmd->src_mapsize & 3;
		cmd->dst = cmd->src;
	} else {
		if (crp->crp_flags & CRYPTO_F_IOV) {
			err = EINVAL;
			goto err_srcmap;
		} else if (crp->crp_flags & CRYPTO_F_IMBUF) {
			int totlen, len;
			struct mbuf *m, *m0, *mlast;

			FUNC6(cmd->dst_m == cmd->src_m,
				("hifn_crypto: dst_m initialized improperly"));
			hifnstats.hst_unaligned++;
			/*
			 * Source is not aligned on a longword boundary.
			 * Copy the data to insure alignment.  If we fail
			 * to allocate mbufs or clusters while doing this
			 * we return ERESTART so the operation is requeued
			 * at the crypto later, but only if there are
			 * ops already posted to the hardware; otherwise we
			 * have no guarantee that we'll be re-entered.
			 */
			totlen = cmd->src_mapsize;
			if (cmd->src_m->m_flags & M_PKTHDR) {
				len = MHLEN;
				FUNC9(m0, M_NOWAIT, MT_DATA);
				if (m0 && !FUNC24(m0, cmd->src_m, M_NOWAIT)) {
					FUNC25(m0);
					m0 = NULL;
				}
			} else {
				len = MLEN;
				FUNC8(m0, M_NOWAIT, MT_DATA);
			}
			if (m0 == NULL) {
				hifnstats.hst_nomem_mbuf++;
				err = sc->sc_cmdu ? ERESTART : ENOMEM;
				goto err_srcmap;
			}
			if (totlen >= MINCLSIZE) {
				if (!(FUNC7(m0, M_NOWAIT))) {
					hifnstats.hst_nomem_mcl++;
					err = sc->sc_cmdu ? ERESTART : ENOMEM;
					FUNC26(m0);
					goto err_srcmap;
				}
				len = MCLBYTES;
			}
			totlen -= len;
			m0->m_pkthdr.len = m0->m_len = len;
			mlast = m0;

			while (totlen > 0) {
				FUNC8(m, M_NOWAIT, MT_DATA);
				if (m == NULL) {
					hifnstats.hst_nomem_mbuf++;
					err = sc->sc_cmdu ? ERESTART : ENOMEM;
					FUNC26(m0);
					goto err_srcmap;
				}
				len = MLEN;
				if (totlen >= MINCLSIZE) {
					if (!(FUNC7(m, M_NOWAIT))) {
						hifnstats.hst_nomem_mcl++;
						err = sc->sc_cmdu ? ERESTART : ENOMEM;
						mlast->m_next = m;
						FUNC26(m0);
						goto err_srcmap;
					}
					len = MCLBYTES;
				}

				m->m_len = len;
				m0->m_pkthdr.len += len;
				totlen -= len;

				mlast->m_next = m;
				mlast = m;
			}
			cmd->dst_m = m0;
		}
	}

	if (cmd->dst_map == NULL) {
		if (FUNC12(sc->sc_dmat, BUS_DMA_NOWAIT, &cmd->dst_map)) {
			hifnstats.hst_nomem_map++;
			err = ENOMEM;
			goto err_srcmap;
		}
		if (crp->crp_flags & CRYPTO_F_IMBUF) {
			if (FUNC14(sc->sc_dmat, cmd->dst_map,
			    cmd->dst_m, hifn_op_cb, &cmd->dst, BUS_DMA_NOWAIT)) {
				hifnstats.hst_nomem_map++;
				err = ENOMEM;
				goto err_dstmap1;
			}
		} else if (crp->crp_flags & CRYPTO_F_IOV) {
			if (FUNC15(sc->sc_dmat, cmd->dst_map,
			    cmd->dst_io, hifn_op_cb, &cmd->dst, BUS_DMA_NOWAIT)) {
				hifnstats.hst_nomem_load++;
				err = ENOMEM;
				goto err_dstmap1;
			}
		}
	}

#ifdef HIFN_DEBUG
	if (hifn_debug) {
		device_printf(sc->sc_dev,
		    "Entering cmd: stat %8x ien %8x u %d/%d/%d/%d n %d/%d\n",
		    READ_REG_1(sc, HIFN_1_DMA_CSR),
		    READ_REG_1(sc, HIFN_1_DMA_IER),
		    sc->sc_cmdu, sc->sc_srcu, sc->sc_dstu, sc->sc_resu,
		    cmd->src_nsegs, cmd->dst_nsegs);
	}
#endif

	if (cmd->src_map == cmd->dst_map) {
		FUNC16(sc->sc_dmat, cmd->src_map,
		    BUS_DMASYNC_PREWRITE|BUS_DMASYNC_PREREAD);
	} else {
		FUNC16(sc->sc_dmat, cmd->src_map,
		    BUS_DMASYNC_PREWRITE);
		FUNC16(sc->sc_dmat, cmd->dst_map,
		    BUS_DMASYNC_PREREAD);
	}

	/*
	 * need N src, and N dst
	 */
	if ((sc->sc_srcu + cmd->src_nsegs) > HIFN_D_SRC_RSIZE ||
	    (sc->sc_dstu + cmd->dst_nsegs + 1) > HIFN_D_DST_RSIZE) {
#ifdef HIFN_DEBUG
		if (hifn_debug) {
			device_printf(sc->sc_dev,
				"src/dst exhaustion, srcu %u+%u dstu %u+%u\n",
				sc->sc_srcu, cmd->src_nsegs,
				sc->sc_dstu, cmd->dst_nsegs);
		}
#endif
		hifnstats.hst_nomem_sd++;
		err = ERESTART;
		goto err_dstmap;
	}

	if (sc->sc_cmdi == HIFN_D_CMD_RSIZE) {
		sc->sc_cmdi = 0;
		dma->cmdr[HIFN_D_CMD_RSIZE].l = FUNC23(HIFN_D_VALID |
		    HIFN_D_JUMP | HIFN_D_MASKDONEIRQ);
		FUNC0(sc, HIFN_D_CMD_RSIZE,
		    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
	}
	cmdi = sc->sc_cmdi++;
	cmdlen = FUNC22(cmd, dma->command_bufs[cmdi]);
	FUNC1(sc, cmdi, BUS_DMASYNC_PREWRITE);

	/* .p for command/result already set */
	dma->cmdr[cmdi].l = FUNC23(cmdlen | HIFN_D_VALID | HIFN_D_LAST |
	    HIFN_D_MASKDONEIRQ);
	FUNC0(sc, cmdi,
	    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
	sc->sc_cmdu++;

	/*
	 * We don't worry about missing an interrupt (which a "command wait"
	 * interrupt salvages us from), unless there is more than one command
	 * in the queue.
	 */
	if (sc->sc_cmdu > 1) {
		sc->sc_dmaier |= HIFN_DMAIER_C_WAIT;
		FUNC11(sc, HIFN_1_DMA_IER, sc->sc_dmaier);
	}

	hifnstats.hst_ipackets++;
	hifnstats.hst_ibytes += cmd->src_mapsize;

	FUNC21(sc, cmd);

	/*
	 * Unlike other descriptors, we don't mask done interrupt from
	 * result descriptor.
	 */
#ifdef HIFN_DEBUG
	if (hifn_debug)
		printf("load res\n");
#endif
	if (sc->sc_resi == HIFN_D_RES_RSIZE) {
		sc->sc_resi = 0;
		dma->resr[HIFN_D_RES_RSIZE].l = FUNC23(HIFN_D_VALID |
		    HIFN_D_JUMP | HIFN_D_MASKDONEIRQ);
		FUNC3(sc, HIFN_D_RES_RSIZE,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}
	resi = sc->sc_resi++;
	FUNC6(sc->sc_hifn_commands[resi] == NULL,
		("hifn_crypto: command slot %u busy", resi));
	sc->sc_hifn_commands[resi] = cmd;
	FUNC4(sc, resi, BUS_DMASYNC_PREREAD);
	if ((hint & CRYPTO_HINT_MORE) && sc->sc_curbatch < hifn_maxbatch) {
		dma->resr[resi].l = FUNC23(HIFN_MAX_RESULT |
		    HIFN_D_VALID | HIFN_D_LAST | HIFN_D_MASKDONEIRQ);
		sc->sc_curbatch++;
		if (sc->sc_curbatch > hifnstats.hst_maxbatch)
			hifnstats.hst_maxbatch = sc->sc_curbatch;
		hifnstats.hst_totbatch++;
	} else {
		dma->resr[resi].l = FUNC23(HIFN_MAX_RESULT |
		    HIFN_D_VALID | HIFN_D_LAST);
		sc->sc_curbatch = 0;
	}
	FUNC3(sc, resi,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	sc->sc_resu++;

	if (cmd->sloplen)
		cmd->slopidx = resi;

	FUNC20(sc, cmd);

	csr = 0;
	if (sc->sc_c_busy == 0) {
		csr |= HIFN_DMACSR_C_CTRL_ENA;
		sc->sc_c_busy = 1;
	}
	if (sc->sc_s_busy == 0) {
		csr |= HIFN_DMACSR_S_CTRL_ENA;
		sc->sc_s_busy = 1;
	}
	if (sc->sc_r_busy == 0) {
		csr |= HIFN_DMACSR_R_CTRL_ENA;
		sc->sc_r_busy = 1;
	}
	if (sc->sc_d_busy == 0) {
		csr |= HIFN_DMACSR_D_CTRL_ENA;
		sc->sc_d_busy = 1;
	}
	if (csr)
		FUNC11(sc, HIFN_1_DMA_CSR, csr);

#ifdef HIFN_DEBUG
	if (hifn_debug) {
		device_printf(sc->sc_dev, "command: stat %8x ier %8x\n",
		    READ_REG_1(sc, HIFN_1_DMA_CSR),
		    READ_REG_1(sc, HIFN_1_DMA_IER));
	}
#endif

	sc->sc_active = 5;
	FUNC5(sc);
	FUNC6(err == 0, ("hifn_crypto: success with error %u", err));
	return (err);		/* success */

err_dstmap:
	if (cmd->src_map != cmd->dst_map)
		FUNC17(sc->sc_dmat, cmd->dst_map);
err_dstmap1:
	if (cmd->src_map != cmd->dst_map)
		FUNC13(sc->sc_dmat, cmd->dst_map);
err_srcmap:
	if (crp->crp_flags & CRYPTO_F_IMBUF) {
		if (cmd->src_m != cmd->dst_m)
			FUNC26(cmd->dst_m);
	}
	FUNC17(sc->sc_dmat, cmd->src_map);
err_srcmap1:
	FUNC13(sc->sc_dmat, cmd->src_map);
	FUNC5(sc);
	return (err);
}