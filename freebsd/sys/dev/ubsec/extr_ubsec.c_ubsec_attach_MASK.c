#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ dma_vaddr; } ;
struct TYPE_5__ {TYPE_3__ q_mcr; TYPE_3__ q_ctx; } ;
struct TYPE_6__ {TYPE_1__ rng_q; TYPE_3__ rng_buf; } ;
struct ubsec_softc {int sc_statmask; int sc_flags; scalar_t__ sc_cid; int sc_rnghz; int /*<<< orphan*/ * sc_sr; int /*<<< orphan*/ * sc_irq; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_mcr2lock; int /*<<< orphan*/  sc_rngto; TYPE_2__ sc_rng; void* sc_harvest; scalar_t__ sc_rndtest; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_freeqlock; int /*<<< orphan*/  sc_mcr1lock; int /*<<< orphan*/  sc_freequeue; struct ubsec_q** sc_queuea; struct ubsec_dma* sc_dmaa; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_sh; int /*<<< orphan*/  sc_st; int /*<<< orphan*/  sc_q2free; int /*<<< orphan*/  sc_qchip2; int /*<<< orphan*/  sc_queue2; int /*<<< orphan*/  sc_qchip; int /*<<< orphan*/  sc_queue; } ;
struct ubsec_session {int dummy; } ;
struct ubsec_q {struct ubsec_dma* q_dma; } ;
struct ubsec_mcr {int dummy; } ;
struct ubsec_dmachunk {int dummy; } ;
struct ubsec_dma {TYPE_3__ d_alloc; struct ubsec_dmachunk* d_dma; } ;
struct ubsec_ctx_rngbypass {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BS_BAR ; 
 int BS_STAT_DMAERR ; 
 int BS_STAT_MCR1_ALLEMPTY ; 
 int BS_STAT_MCR1_DONE ; 
 int BS_STAT_MCR2_ALLEMPTY ; 
 int BS_STAT_MCR2_DONE ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CRK_MOD_EXP ; 
 int /*<<< orphan*/  CRK_MOD_EXP_CRT ; 
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ PCI_PRODUCT_BLUESTEEL_5601 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5802 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5805 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5820 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5821 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5822 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5823 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5825 ; 
 scalar_t__ PCI_PRODUCT_SUN_5821 ; 
 scalar_t__ PCI_PRODUCT_SUN_SCA1K ; 
 scalar_t__ PCI_VENDOR_BLUESTEEL ; 
 scalar_t__ PCI_VENDOR_BROADCOM ; 
 scalar_t__ PCI_VENDOR_SUN ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ubsec_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int UBSEC_RNG_BUFSIZ ; 
 int UBS_FLAGS_BIGKEY ; 
 int UBS_FLAGS_HWNORM ; 
 int UBS_FLAGS_KEY ; 
 int UBS_FLAGS_LONGCTX ; 
 int UBS_FLAGS_RNG ; 
 scalar_t__ UBS_MAX_NQUEUE ; 
 int /*<<< orphan*/  UBS_MAX_SCATTER ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ubsec_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubsec_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ubsec_softc*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 void* default_harvest ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct ubsec_softc* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct ubsec_q*,int /*<<< orphan*/ ) ; 
 int hz ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 void* rndtest_harvest ; 
 int /*<<< orphan*/  FUNC27 (struct ubsec_softc*,TYPE_3__*) ; 
 scalar_t__ FUNC28 (struct ubsec_softc*,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ubsec_softc*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ubsec_intr ; 
 int /*<<< orphan*/  FUNC31 (struct ubsec_softc*) ; 
 int /*<<< orphan*/  FUNC32 (struct ubsec_softc*) ; 
 int /*<<< orphan*/  ubsec_rng ; 

__attribute__((used)) static int
FUNC33(device_t dev)
{
	struct ubsec_softc *sc = FUNC16(dev);
	struct ubsec_dma *dmap;
	u_int32_t i;
	int rid;

	FUNC8(sc, sizeof (*sc));
	sc->sc_dev = dev;

	FUNC0(&sc->sc_queue);
	FUNC0(&sc->sc_qchip);
	FUNC0(&sc->sc_queue2);
	FUNC0(&sc->sc_qchip2);
	FUNC0(&sc->sc_q2free);

	/* XXX handle power management */

	sc->sc_statmask = BS_STAT_MCR1_DONE | BS_STAT_DMAERR;

	if (FUNC23(dev) == PCI_VENDOR_BLUESTEEL &&
	    FUNC22(dev) == PCI_PRODUCT_BLUESTEEL_5601)
		sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG;

	if (FUNC23(dev) == PCI_VENDOR_BROADCOM &&
	    (FUNC22(dev) == PCI_PRODUCT_BROADCOM_5802 ||
	     FUNC22(dev) == PCI_PRODUCT_BROADCOM_5805))
		sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG;

	if (FUNC23(dev) == PCI_VENDOR_BROADCOM &&
	    FUNC22(dev) == PCI_PRODUCT_BROADCOM_5820)
		sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG |
		    UBS_FLAGS_LONGCTX | UBS_FLAGS_HWNORM | UBS_FLAGS_BIGKEY;

	if ((FUNC23(dev) == PCI_VENDOR_BROADCOM &&
	     (FUNC22(dev) == PCI_PRODUCT_BROADCOM_5821 ||
	      FUNC22(dev) == PCI_PRODUCT_BROADCOM_5822 ||
	      FUNC22(dev) == PCI_PRODUCT_BROADCOM_5823 ||
	      FUNC22(dev) == PCI_PRODUCT_BROADCOM_5825)) ||
	    (FUNC23(dev) == PCI_VENDOR_SUN &&
	     (FUNC22(dev) == PCI_PRODUCT_SUN_SCA1K ||
	      FUNC22(dev) == PCI_PRODUCT_SUN_5821))) {
		/* NB: the 5821/5822 defines some additional status bits */
		sc->sc_statmask |= BS_STAT_MCR1_ALLEMPTY |
		    BS_STAT_MCR2_ALLEMPTY;
		sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG |
		    UBS_FLAGS_LONGCTX | UBS_FLAGS_HWNORM | UBS_FLAGS_BIGKEY;
	}

	FUNC21(dev);

	/*
	 * Setup memory-mapping of PCI registers.
	 */
	rid = BS_BAR;
	sc->sc_sr = FUNC2(dev, SYS_RES_MEMORY, &rid,
					   RF_ACTIVE);
	if (sc->sc_sr == NULL) {
		FUNC17(dev, "cannot map register space\n");
		goto bad;
	}
	sc->sc_st = FUNC25(sc->sc_sr);
	sc->sc_sh = FUNC24(sc->sc_sr);

	/*
	 * Arrange interrupt line.
	 */
	rid = 0;
	sc->sc_irq = FUNC2(dev, SYS_RES_IRQ, &rid,
					    RF_SHAREABLE|RF_ACTIVE);
	if (sc->sc_irq == NULL) {
		FUNC17(dev, "could not map interrupt\n");
		goto bad1;
	}
	/*
	 * NB: Network code assumes we are blocked with splimp()
	 *     so make sure the IRQ is mapped appropriately.
	 */
	if (FUNC6(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
			   NULL, ubsec_intr, sc, &sc->sc_ih)) {
		FUNC17(dev, "could not establish interrupt\n");
		goto bad2;
	}

	sc->sc_cid = FUNC11(dev, sizeof(struct ubsec_session),
	    CRYPTOCAP_F_HARDWARE);
	if (sc->sc_cid < 0) {
		FUNC17(dev, "could not get crypto driver id\n");
		goto bad3;
	}

	/*
	 * Setup DMA descriptor area.
	 */
	if (FUNC3(FUNC4(dev),	/* parent */
			       1, 0,			/* alignment, bounds */
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR,	/* highaddr */
			       NULL, NULL,		/* filter, filterarg */
			       0x3ffff,			/* maxsize */
			       UBS_MAX_SCATTER,		/* nsegments */
			       0xffff,			/* maxsegsize */
			       BUS_DMA_ALLOCNOW,	/* flags */
			       NULL, NULL,		/* lockfunc, lockarg */
			       &sc->sc_dmat)) {
		FUNC17(dev, "cannot allocate DMA tag\n");
		goto bad4;
	}
	FUNC0(&sc->sc_freequeue);
	dmap = sc->sc_dmaa;
	for (i = 0; i < UBS_MAX_NQUEUE; i++, dmap++) {
		struct ubsec_q *q;

		q = (struct ubsec_q *)FUNC19(sizeof(struct ubsec_q),
		    M_DEVBUF, M_NOWAIT);
		if (q == NULL) {
			FUNC17(dev, "cannot allocate queue buffers\n");
			break;
		}

		if (FUNC28(sc, sizeof(struct ubsec_dmachunk),
		    &dmap->d_alloc, 0)) {
			FUNC17(dev, "cannot allocate dma buffers\n");
			FUNC18(q, M_DEVBUF);
			break;
		}
		dmap->d_dma = (struct ubsec_dmachunk *)dmap->d_alloc.dma_vaddr;

		q->q_dma = dmap;
		sc->sc_queuea[i] = q;

		FUNC1(&sc->sc_freequeue, q, q_next);
	}
	FUNC20(&sc->sc_mcr1lock, FUNC15(dev),
		"mcr1 operations", MTX_DEF);
	FUNC20(&sc->sc_freeqlock, FUNC15(dev),
		"mcr1 free q", MTX_DEF);

	FUNC17(sc->sc_dev, "%s\n", FUNC31(sc));

	FUNC13(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
	FUNC13(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
	FUNC13(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
	FUNC13(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);

	/*
	 * Reset Broadcom chip
	 */
	FUNC32(sc);

	/*
	 * Init Broadcom specific PCI settings
	 */
	FUNC30(dev);

	/*
	 * Init Broadcom chip
	 */
	FUNC29(sc);

#ifndef UBSEC_NO_RNG
	if (sc->sc_flags & UBS_FLAGS_RNG) {
		sc->sc_statmask |= BS_STAT_MCR2_DONE;
#ifdef UBSEC_RNDTEST
		sc->sc_rndtest = rndtest_attach(dev);
		if (sc->sc_rndtest)
			sc->sc_harvest = rndtest_harvest;
		else
			sc->sc_harvest = default_harvest;
#else
		sc->sc_harvest = default_harvest;
#endif

		if (FUNC28(sc, sizeof(struct ubsec_mcr),
		    &sc->sc_rng.rng_q.q_mcr, 0))
			goto skip_rng;

		if (FUNC28(sc, sizeof(struct ubsec_ctx_rngbypass),
		    &sc->sc_rng.rng_q.q_ctx, 0)) {
			FUNC27(sc, &sc->sc_rng.rng_q.q_mcr);
			goto skip_rng;
		}

		if (FUNC28(sc, sizeof(u_int32_t) *
		    UBSEC_RNG_BUFSIZ, &sc->sc_rng.rng_buf, 0)) {
			FUNC27(sc, &sc->sc_rng.rng_q.q_ctx);
			FUNC27(sc, &sc->sc_rng.rng_q.q_mcr);
			goto skip_rng;
		}

		if (hz >= 100)
			sc->sc_rnghz = hz / 100;
		else
			sc->sc_rnghz = 1;
		FUNC9(&sc->sc_rngto, 1);
		FUNC10(&sc->sc_rngto, sc->sc_rnghz, ubsec_rng, sc);
skip_rng:
	;
	}
#endif /* UBSEC_NO_RNG */
	FUNC20(&sc->sc_mcr2lock, FUNC15(dev),
		"mcr2 operations", MTX_DEF);

	if (sc->sc_flags & UBS_FLAGS_KEY) {
		sc->sc_statmask |= BS_STAT_MCR2_DONE;

		FUNC12(sc->sc_cid, CRK_MOD_EXP, 0);
#if 0
		crypto_kregister(sc->sc_cid, CRK_MOD_EXP_CRT, 0);
#endif
	}
	return (0);
bad4:
	FUNC14(sc->sc_cid);
bad3:
	FUNC7(dev, sc->sc_irq, sc->sc_ih);
bad2:
	FUNC5(dev, SYS_RES_IRQ, 0, sc->sc_irq);
bad1:
	FUNC5(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);
bad:
	return (ENXIO);
}