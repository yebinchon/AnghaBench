#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* dv_cfdata; } ;
struct ncr53c9x_softc {size_t sc_rev; int sc_freq; int sc_ntarg; int sc_omess_self; int sc_imess_self; int sc_ccf; int sc_timeout; int /*<<< orphan*/ * sc_omess; int /*<<< orphan*/ * sc_imess; int /*<<< orphan*/ * sc_tinfo; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  free_list; int /*<<< orphan*/  sc_lock; struct ncr53c9x_ecb* ecb_array; TYPE_2__ sc_dev; scalar_t__ sc_state; scalar_t__ sc_cfflags; struct cam_path* sc_path; struct cam_sim* sc_sim; int /*<<< orphan*/  sc_id; } ;
struct ncr53c9x_ecb {int tag_id; int /*<<< orphan*/  ch; struct ncr53c9x_softc* sc; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct TYPE_5__ {scalar_t__ cf_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct ncr53c9x_softc*) ; 
 scalar_t__ FUNC2 (struct ncr53c9x_softc*) ; 
 int NCR_MAX_MSG_LEN ; 
 int NCR_TAG_DEPTH ; 
 int /*<<< orphan*/  FUNC3 (struct ncr53c9x_softc*) ; 
 size_t NCR_VARIANT_ESP100 ; 
 size_t NCR_VARIANT_FAS366 ; 
 size_t NCR_VARIANT_MAX ; 
 size_t NCR_VARIANT_NCR53C90_86C01 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ncr53c9x_ecb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ncr53c9x_softc*) ; 
 struct cam_sim* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ncr53c9x_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_sim*) ; 
 struct cam_devq* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_links ; 
 int hz ; 
 void* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ncr53c9x_action ; 
 int /*<<< orphan*/  ncr53c9x_async ; 
 int /*<<< orphan*/  FUNC17 (struct ncr53c9x_softc*,int) ; 
 int /*<<< orphan*/  ncr53c9x_poll ; 
 int /*<<< orphan*/ * ncr53c9x_variant_names ; 
 int /*<<< orphan*/  ncr53c9x_watch ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct cam_sim*,TYPE_2__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct cam_path*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_sim*,struct cam_path*) ; 

int
FUNC23(struct ncr53c9x_softc *sc)
{
	struct cam_devq *devq;
	struct cam_sim *sim;
	struct cam_path *path;
	struct ncr53c9x_ecb *ecb;
	int error, i;

	if (FUNC2(sc) == 0) {
		FUNC14(sc->sc_dev, "mutex not initialized\n");
		return (ENXIO);
	}

	FUNC6(&sc->sc_watchdog, &sc->sc_lock, 0);

	/*
	 * Note, the front-end has set us up to print the chip variation.
	 */
	if (sc->sc_rev >= NCR_VARIANT_MAX) {
		FUNC14(sc->sc_dev, "unknown variant %d, devices not "
		    "attached\n", sc->sc_rev);
		return (EINVAL);
	}

	FUNC14(sc->sc_dev, "%s, %d MHz, SCSI ID %d\n",
	    ncr53c9x_variant_names[sc->sc_rev], sc->sc_freq, sc->sc_id);

	sc->sc_ntarg = (sc->sc_rev == NCR_VARIANT_FAS366) ? 16 : 8;

	/*
	 * Allocate SCSI message buffers.
	 * Front-ends can override allocation to avoid alignment
	 * handling in the DMA engines.  Note that ncr53c9x_msgout()
	 * can request a 1 byte DMA transfer.
	 */
	if (sc->sc_omess == NULL) {
		sc->sc_omess_self = 1;
		sc->sc_omess = FUNC16(NCR_MAX_MSG_LEN, M_DEVBUF, M_NOWAIT);
		if (sc->sc_omess == NULL) {
			FUNC14(sc->sc_dev,
			    "cannot allocate MSGOUT buffer\n");
			return (ENOMEM);
		}
	} else
		sc->sc_omess_self = 0;

	if (sc->sc_imess == NULL) {
		sc->sc_imess_self = 1;
		sc->sc_imess = FUNC16(NCR_MAX_MSG_LEN + 1, M_DEVBUF, M_NOWAIT);
		if (sc->sc_imess == NULL) {
			FUNC14(sc->sc_dev,
			    "cannot allocate MSGIN buffer\n");
			error = ENOMEM;
			goto fail_omess;
		}
	} else
		sc->sc_imess_self = 0;

	sc->sc_tinfo = FUNC16(sc->sc_ntarg * sizeof(sc->sc_tinfo[0]),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->sc_tinfo == NULL) {
		FUNC14(sc->sc_dev,
		    "cannot allocate target info buffer\n");
		error = ENOMEM;
		goto fail_imess;
	}

	/*
	 * Treat NCR53C90 with the 86C01 DMA chip exactly as ESP100
	 * from now on.
	 */
	if (sc->sc_rev == NCR_VARIANT_NCR53C90_86C01)
		sc->sc_rev = NCR_VARIANT_ESP100;

	sc->sc_ccf = FUNC0(sc->sc_freq);

	/* The value *must not* be == 1.  Make it 2. */
	if (sc->sc_ccf == 1)
		sc->sc_ccf = 2;

	/*
	 * The recommended timeout is 250ms.  This register is loaded
	 * with a value calculated as follows, from the docs:
	 *
	 *		(timeout period) x (CLK frequency)
	 *	reg = -------------------------------------
	 *		 8192 x (Clock Conversion Factor)
	 *
	 * Since CCF has a linear relation to CLK, this generally computes
	 * to the constant of 153.
	 */
	sc->sc_timeout = ((250 * 1000) * sc->sc_freq) / (8192 * sc->sc_ccf);

	/* The CCF register only has 3 bits; 0 is actually 8. */
	sc->sc_ccf &= 7;

	/*
	 * Register with CAM.
	 */
	devq = FUNC11(sc->sc_ntarg);
	if (devq == NULL) {
		FUNC14(sc->sc_dev, "cannot allocate device queue\n");
		error = ENOMEM;
		goto fail_tinfo;
	}

	sim = FUNC8(ncr53c9x_action, ncr53c9x_poll, "esp", sc,
	    FUNC13(sc->sc_dev), &sc->sc_lock, 1, NCR_TAG_DEPTH, devq);
	if (sim == NULL) {
		FUNC14(sc->sc_dev, "cannot allocate SIM entry\n");
		error = ENOMEM;
		goto fail_devq;
	}

	FUNC1(sc);

	if (FUNC19(sim, sc->sc_dev, 0) != CAM_SUCCESS) {
		FUNC14(sc->sc_dev, "cannot register bus\n");
		error = EIO;
		goto fail_lock;
	}

	if (FUNC20(&path, NULL, FUNC10(sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC14(sc->sc_dev, "cannot create path\n");
		error = EIO;
		goto fail_bus;
	}

	if (FUNC22(AC_LOST_DEVICE, ncr53c9x_async, sim, path) !=
	    CAM_REQ_CMP) {
		FUNC14(sc->sc_dev, "cannot register async handler\n");
		error = EIO;
		goto fail_path;
	}

	sc->sc_sim = sim;
	sc->sc_path = path;

	/* Reset state and bus. */
#if 0
	sc->sc_cfflags = sc->sc_dev.dv_cfdata->cf_flags;
#else
	sc->sc_cfflags = 0;
#endif
	sc->sc_state = 0;
	FUNC17(sc, 1);

	FUNC4(&sc->free_list);
	if ((sc->ecb_array =
	    FUNC16(sizeof(struct ncr53c9x_ecb) * NCR_TAG_DEPTH, M_DEVBUF,
	    M_NOWAIT | M_ZERO)) == NULL) {
		FUNC14(sc->sc_dev, "cannot allocate ECB array\n");
		error = ENOMEM;
		goto fail_async;
	}
	for (i = 0; i < NCR_TAG_DEPTH; i++) {
		ecb = &sc->ecb_array[i];
		ecb->sc = sc;
		ecb->tag_id = i;
		FUNC6(&ecb->ch, &sc->sc_lock, 0);
		FUNC5(&sc->free_list, ecb, free_links);
	}

	FUNC7(&sc->sc_watchdog, 60 * hz, ncr53c9x_watch, sc);

	FUNC3(sc);

	return (0);

fail_async:
	FUNC22(0, ncr53c9x_async, sim, path);
fail_path:
	FUNC21(path);
fail_bus:
	FUNC18(FUNC10(sim));
fail_lock:
	FUNC3(sc);
	FUNC9(sim, TRUE);
fail_devq:
	FUNC12(devq);
fail_tinfo:
	FUNC15(sc->sc_tinfo, M_DEVBUF);
fail_imess:
	if (sc->sc_imess_self)
		FUNC15(sc->sc_imess, M_DEVBUF);
fail_omess:
	if (sc->sc_omess_self)
		FUNC15(sc->sc_omess, M_DEVBUF);
	return (error);
}