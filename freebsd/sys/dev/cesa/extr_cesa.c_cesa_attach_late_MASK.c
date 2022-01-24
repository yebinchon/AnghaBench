#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct cesa_tdma_hdesc {int dummy; } ;
struct TYPE_4__ {scalar_t__ cdm_paddr; scalar_t__ cdm_vaddr; } ;
struct cesa_softc {int sc_tperr; int sc_soc_id; scalar_t__ sc_cid; int /*<<< orphan*/  sc_sc_lock; int /*<<< orphan*/  sc_tdesc_lock; int /*<<< orphan*/  sc_sdesc_lock; int /*<<< orphan*/  sc_requests_lock; int /*<<< orphan*/  sc_sessions_lock; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_sram_size; int /*<<< orphan*/  sc_sram_base_va; int /*<<< orphan*/  sc_icookie; int /*<<< orphan*/  sc_data_dtag; TYPE_1__ sc_tdesc_cdm; TYPE_1__ sc_sdesc_cdm; TYPE_1__ sc_requests_cdm; TYPE_3__* sc_requests; int /*<<< orphan*/  sc_free_requests; int /*<<< orphan*/  sc_queued_requests; int /*<<< orphan*/  sc_ready_requests; TYPE_3__* sc_sdesc; int /*<<< orphan*/  sc_free_sdesc; TYPE_3__* sc_tdesc; int /*<<< orphan*/  sc_free_tdesc; int /*<<< orphan*/  sc_dev; scalar_t__ sc_error; scalar_t__ sc_blocked; } ;
struct cesa_session {int dummy; } ;
struct cesa_sa_hdesc {int dummy; } ;
struct cesa_sa_data {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/  cr_dmap; scalar_t__ cr_csd_paddr; struct cesa_sa_data* cr_csd; scalar_t__ csd_cshd_paddr; struct cesa_sa_hdesc* csd_cshd; scalar_t__ ctd_cthd_paddr; struct cesa_tdma_hdesc* ctd_cthd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CESA_ICM ; 
 int CESA_ICM_ACCTDMA ; 
 int /*<<< orphan*/  CESA_ICR ; 
 int CESA_ICR_TPERR ; 
 int /*<<< orphan*/  CESA_MAX_FRAGMENTS ; 
 int /*<<< orphan*/  CESA_MAX_REQUEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,int /*<<< orphan*/ ,int) ; 
 int CESA_REQUESTS ; 
 int /*<<< orphan*/  CESA_SA_CR ; 
 int CESA_SA_CR_ACTIVATE_TDMA ; 
 int CESA_SA_CR_MULTI_MODE ; 
 int CESA_SA_CR_WAIT_FOR_TDMA ; 
 int CESA_SA_DESCRIPTORS ; 
 int /*<<< orphan*/  CESA_SA_DPR ; 
 int /*<<< orphan*/  CESA_TDMA_CR ; 
 int CESA_TDMA_CR_DBL128 ; 
 int CESA_TDMA_CR_ENABLE ; 
 int CESA_TDMA_CR_NBS ; 
 int CESA_TDMA_CR_ORDEN ; 
 int CESA_TDMA_CR_SBL128 ; 
 int CESA_TDMA_DESCRIPTORS ; 
 int /*<<< orphan*/  CESA_TDMA_ECR ; 
 int /*<<< orphan*/  CESA_TDMA_EMR ; 
 int CESA_TDMA_EMR_BOTH_HIT ; 
 int CESA_TDMA_EMR_DATA_ERROR ; 
 int CESA_TDMA_EMR_DOUBLE_HIT ; 
 int CESA_TDMA_EMR_MISS ; 
 int CESA_TDMA_NUM_OUTSTAND ; 
 int /*<<< orphan*/  FUNC1 (struct cesa_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CPU_PM_CTRL_CRYPTO ; 
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5 ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1 ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_256_HMAC ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
#define  MV_DEV_88F6281 134 
#define  MV_DEV_88F6282 133 
#define  MV_DEV_88F6810 132 
#define  MV_DEV_88F6820 131 
#define  MV_DEV_88F6828 130 
#define  MV_DEV_MV78100 129 
#define  MV_DEV_MV78100_Z0 128 
 size_t RES_CESA_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cesa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cesa_softc*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  cesa_intr ; 
 int /*<<< orphan*/  cesa_res_spec ; 
 int FUNC15 (struct cesa_softc*) ; 
 int FUNC16 (struct cesa_softc*) ; 
 int /*<<< orphan*/  cr_stq ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csd_stq ; 
 int /*<<< orphan*/  ctd_stq ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct cesa_softc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int*,int*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct cesa_softc *sc;
	uint32_t d, r, val;
	int error;
	int i;

	sc = FUNC20(dev);
	sc->sc_blocked = 0;
	sc->sc_error = 0;
	sc->sc_dev = dev;

	FUNC26(&d, &r);

	switch (d) {
	case MV_DEV_88F6281:
	case MV_DEV_88F6282:
		/* Check if CESA peripheral device has power turned on */
		if (FUNC27(CPU_PM_CTRL_CRYPTO) ==
		    CPU_PM_CTRL_CRYPTO) {
			FUNC21(dev, "not powered on\n");
			return (ENXIO);
		}
		sc->sc_tperr = 0;
		break;
	case MV_DEV_88F6828:
	case MV_DEV_88F6820:
	case MV_DEV_88F6810:
		sc->sc_tperr = 0;
		break;
	case MV_DEV_MV78100:
	case MV_DEV_MV78100_Z0:
		/* Check if CESA peripheral device has power turned on */
		if (FUNC27(CPU_PM_CTRL_CRYPTO) !=
		    CPU_PM_CTRL_CRYPTO) {
			FUNC21(dev, "not powered on\n");
			return (ENXIO);
		}
		sc->sc_tperr = CESA_ICR_TPERR;
		break;
	default:
		return (ENXIO);
	}

	sc->sc_soc_id = d;

	/* Initialize mutexes */
	FUNC23(&sc->sc_sc_lock, FUNC19(dev),
	    "CESA Shared Data", MTX_DEF);
	FUNC23(&sc->sc_tdesc_lock, FUNC19(dev),
	    "CESA TDMA Descriptors Pool", MTX_DEF);
	FUNC23(&sc->sc_sdesc_lock, FUNC19(dev),
	    "CESA SA Descriptors Pool", MTX_DEF);
	FUNC23(&sc->sc_requests_lock, FUNC19(dev),
	    "CESA Requests Pool", MTX_DEF);
	FUNC23(&sc->sc_sessions_lock, FUNC19(dev),
	    "CESA Sessions Pool", MTX_DEF);

	/* Allocate I/O and IRQ resources */
	error = FUNC4(dev, cesa_res_spec, sc->sc_res);
	if (error) {
		FUNC21(dev, "could not allocate resources\n");
		goto err0;
	}

	/* Acquire SRAM base address */
	if (!FUNC24(dev, "marvell,armada-38x-crypto"))
		error = FUNC15(sc);
	else
		error = FUNC16(sc);

	if (error) {
		FUNC21(dev, "could not setup SRAM\n");
		goto err1;
	}

	/* Setup interrupt handler */
	error = FUNC11(dev, sc->sc_res[RES_CESA_IRQ], INTR_TYPE_NET |
	    INTR_MPSAFE, NULL, cesa_intr, sc, &(sc->sc_icookie));
	if (error) {
		FUNC21(dev, "could not setup engine completion irq\n");
		goto err2;
	}

	/* Create DMA tag for processed data */
	error = FUNC5(FUNC9(dev),	/* parent */
	    1, 0,				/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,		/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filtfunc, filtfuncarg */
	    CESA_MAX_REQUEST_SIZE,		/* maxsize */
	    CESA_MAX_FRAGMENTS,			/* nsegments */
	    CESA_MAX_REQUEST_SIZE, 0,		/* maxsegsz, flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    &sc->sc_data_dtag);			/* dmat */
	if (error)
		goto err3;

	/* Initialize data structures: TDMA Descriptors Pool */
	error = FUNC13(sc, &sc->sc_tdesc_cdm,
	    CESA_TDMA_DESCRIPTORS * sizeof(struct cesa_tdma_hdesc));
	if (error)
		goto err4;

	FUNC2(&sc->sc_free_tdesc);
	for (i = 0; i < CESA_TDMA_DESCRIPTORS; i++) {
		sc->sc_tdesc[i].ctd_cthd =
		    (struct cesa_tdma_hdesc *)(sc->sc_tdesc_cdm.cdm_vaddr) + i;
		sc->sc_tdesc[i].ctd_cthd_paddr = sc->sc_tdesc_cdm.cdm_paddr +
		    (i * sizeof(struct cesa_tdma_hdesc));
		FUNC3(&sc->sc_free_tdesc, &sc->sc_tdesc[i],
		    ctd_stq);
	}

	/* Initialize data structures: SA Descriptors Pool */
	error = FUNC13(sc, &sc->sc_sdesc_cdm,
	    CESA_SA_DESCRIPTORS * sizeof(struct cesa_sa_hdesc));
	if (error)
		goto err5;

	FUNC2(&sc->sc_free_sdesc);
	for (i = 0; i < CESA_SA_DESCRIPTORS; i++) {
		sc->sc_sdesc[i].csd_cshd =
		    (struct cesa_sa_hdesc *)(sc->sc_sdesc_cdm.cdm_vaddr) + i;
		sc->sc_sdesc[i].csd_cshd_paddr = sc->sc_sdesc_cdm.cdm_paddr +
		    (i * sizeof(struct cesa_sa_hdesc));
		FUNC3(&sc->sc_free_sdesc, &sc->sc_sdesc[i],
		    csd_stq);
	}

	/* Initialize data structures: Requests Pool */
	error = FUNC13(sc, &sc->sc_requests_cdm,
	    CESA_REQUESTS * sizeof(struct cesa_sa_data));
	if (error)
		goto err6;

	FUNC2(&sc->sc_free_requests);
	FUNC2(&sc->sc_ready_requests);
	FUNC2(&sc->sc_queued_requests);
	for (i = 0; i < CESA_REQUESTS; i++) {
		sc->sc_requests[i].cr_csd =
		    (struct cesa_sa_data *)(sc->sc_requests_cdm.cdm_vaddr) + i;
		sc->sc_requests[i].cr_csd_paddr =
		    sc->sc_requests_cdm.cdm_paddr +
		    (i * sizeof(struct cesa_sa_data));

		/* Preallocate DMA maps */
		error = FUNC7(sc->sc_data_dtag, 0,
		    &sc->sc_requests[i].cr_dmap);
		if (error && i > 0) {
			i--;
			do {
				FUNC8(sc->sc_data_dtag,
				    sc->sc_requests[i].cr_dmap);
			} while (i--);

			goto err7;
		}

		FUNC3(&sc->sc_free_requests, &sc->sc_requests[i],
		    cr_stq);
	}

	/*
	 * Initialize TDMA:
	 * - Burst limit: 128 bytes,
	 * - Outstanding reads enabled,
	 * - No byte-swap.
	 */
	val = CESA_TDMA_CR_DBL128 | CESA_TDMA_CR_SBL128 |
	    CESA_TDMA_CR_ORDEN | CESA_TDMA_CR_NBS | CESA_TDMA_CR_ENABLE;

	if (sc->sc_soc_id == MV_DEV_88F6828 ||
	    sc->sc_soc_id == MV_DEV_88F6820 ||
	    sc->sc_soc_id == MV_DEV_88F6810)
		val |= CESA_TDMA_NUM_OUTSTAND;

	FUNC1(sc, CESA_TDMA_CR, val);

	/*
	 * Initialize SA:
	 * - SA descriptor is present at beginning of CESA SRAM,
	 * - Multi-packet chain mode,
	 * - Cooperation with TDMA enabled.
	 */
	FUNC0(sc, CESA_SA_DPR, 0);
	FUNC0(sc, CESA_SA_CR, CESA_SA_CR_ACTIVATE_TDMA |
	    CESA_SA_CR_WAIT_FOR_TDMA | CESA_SA_CR_MULTI_MODE);

	/* Unmask interrupts */
	FUNC0(sc, CESA_ICR, 0);
	FUNC0(sc, CESA_ICM, CESA_ICM_ACCTDMA | sc->sc_tperr);
	FUNC1(sc, CESA_TDMA_ECR, 0);
	FUNC1(sc, CESA_TDMA_EMR, CESA_TDMA_EMR_MISS |
	    CESA_TDMA_EMR_DOUBLE_HIT | CESA_TDMA_EMR_BOTH_HIT |
	    CESA_TDMA_EMR_DATA_ERROR);

	/* Register in OCF */
	sc->sc_cid = FUNC17(dev, sizeof(struct cesa_session),
	    CRYPTOCAP_F_HARDWARE);
	if (sc->sc_cid < 0) {
		FUNC21(dev, "could not get crypto driver id\n");
		goto err8;
	}

	FUNC18(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_MD5, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_SHA1, 0, 0);
	FUNC18(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
	if (sc->sc_soc_id == MV_DEV_88F6828 ||
	    sc->sc_soc_id == MV_DEV_88F6820 ||
	    sc->sc_soc_id == MV_DEV_88F6810)
		FUNC18(sc->sc_cid, CRYPTO_SHA2_256_HMAC, 0, 0);

	return (0);
err8:
	for (i = 0; i < CESA_REQUESTS; i++)
		FUNC8(sc->sc_data_dtag,
		    sc->sc_requests[i].cr_dmap);
err7:
	FUNC14(&sc->sc_requests_cdm);
err6:
	FUNC14(&sc->sc_sdesc_cdm);
err5:
	FUNC14(&sc->sc_tdesc_cdm);
err4:
	FUNC6(sc->sc_data_dtag);
err3:
	FUNC12(dev, sc->sc_res[RES_CESA_IRQ], sc->sc_icookie);
err2:
	if (sc->sc_soc_id == MV_DEV_88F6828 ||
	    sc->sc_soc_id == MV_DEV_88F6820 ||
	    sc->sc_soc_id == MV_DEV_88F6810)
		FUNC25(sc->sc_sram_base_va, sc->sc_sram_size);
err1:
	FUNC10(dev, cesa_res_spec, sc->sc_res);
err0:
	FUNC22(&sc->sc_sessions_lock);
	FUNC22(&sc->sc_requests_lock);
	FUNC22(&sc->sc_sdesc_lock);
	FUNC22(&sc->sc_tdesc_lock);
	FUNC22(&sc->sc_sc_lock);
	return (ENXIO);
}