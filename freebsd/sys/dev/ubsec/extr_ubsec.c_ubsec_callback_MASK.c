#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubsec_softc {int /*<<< orphan*/  sc_freeqlock; int /*<<< orphan*/  sc_freequeue; int /*<<< orphan*/  sc_dmat; } ;
struct ubsec_session {int /*<<< orphan*/  ses_mlen; scalar_t__ ses_iv; } ;
struct ubsec_q {scalar_t__ q_src_m; scalar_t__ q_dst_m; int q_flags; int /*<<< orphan*/ * q_src_map; int /*<<< orphan*/ * q_dst_map; struct ubsec_dma* q_dma; scalar_t__ q_crp; } ;
struct TYPE_6__ {scalar_t__ dma_size; } ;
struct ubsec_dma {TYPE_1__* d_dma; TYPE_3__ d_alloc; } ;
struct cryptop {int crp_flags; scalar_t__ crp_buf; struct cryptodesc* crp_desc; int /*<<< orphan*/  crp_session; } ;
struct cryptodesc {scalar_t__ crd_alg; int /*<<< orphan*/  crd_inject; struct cryptodesc* crd_next; scalar_t__ crd_len; scalar_t__ crd_skip; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  hst_obytes; int /*<<< orphan*/  hst_opackets; } ;
struct TYPE_4__ {scalar_t__ d_macbuf; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ CRYPTO_3DES_CBC ; 
 scalar_t__ CRYPTO_DES_CBC ; 
 int CRYPTO_F_IMBUF ; 
 scalar_t__ CRYPTO_MD5_HMAC ; 
 scalar_t__ CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ubsec_q*,int /*<<< orphan*/ ) ; 
 int UBSEC_QFLAGS_COPYOUTIV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cryptop*) ; 
 struct ubsec_session* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 TYPE_2__ ubsecstats ; 

__attribute__((used)) static void
FUNC12(struct ubsec_softc *sc, struct ubsec_q *q)
{
	struct cryptop *crp = (struct cryptop *)q->q_crp;
	struct ubsec_session *ses;
	struct cryptodesc *crd;
	struct ubsec_dma *dmap = q->q_dma;

	ses = FUNC7(crp->crp_session);

	ubsecstats.hst_opackets++;
	ubsecstats.hst_obytes += dmap->d_alloc.dma_size;

	FUNC11(&dmap->d_alloc,
	    BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
	if (q->q_dst_map != NULL && q->q_dst_map != q->q_src_map) {
		FUNC2(sc->sc_dmat, q->q_dst_map,
		    BUS_DMASYNC_POSTREAD);
		FUNC3(sc->sc_dmat, q->q_dst_map);
		FUNC1(sc->sc_dmat, q->q_dst_map);
	}
	FUNC2(sc->sc_dmat, q->q_src_map, BUS_DMASYNC_POSTWRITE);
	FUNC3(sc->sc_dmat, q->q_src_map);
	FUNC1(sc->sc_dmat, q->q_src_map);

	if ((crp->crp_flags & CRYPTO_F_IMBUF) && (q->q_src_m != q->q_dst_m)) {
		FUNC8(q->q_src_m);
		crp->crp_buf = (caddr_t)q->q_dst_m;
	}

	/* copy out IV for future use */
	if (q->q_flags & UBSEC_QFLAGS_COPYOUTIV) {
		for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
			if (crd->crd_alg != CRYPTO_DES_CBC &&
			    crd->crd_alg != CRYPTO_3DES_CBC)
				continue;
			FUNC5(crp->crp_flags, crp->crp_buf,
			    crd->crd_skip + crd->crd_len - 8, 8,
			    (caddr_t)ses->ses_iv);
			break;
		}
	}

	for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
		if (crd->crd_alg != CRYPTO_MD5_HMAC &&
		    crd->crd_alg != CRYPTO_SHA1_HMAC)
			continue;
		FUNC4(crp->crp_flags, crp->crp_buf, crd->crd_inject,
		    ses->ses_mlen, (caddr_t)dmap->d_dma->d_macbuf);
		break;
	}
	FUNC9(&sc->sc_freeqlock);
	FUNC0(&sc->sc_freequeue, q, q_next);
	FUNC10(&sc->sc_freeqlock);
	FUNC6(crp);
}