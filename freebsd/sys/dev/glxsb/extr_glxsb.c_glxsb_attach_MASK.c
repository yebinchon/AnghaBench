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
typedef  int uint64_t ;
struct glxsb_softc {int sc_rnghz; int /*<<< orphan*/ * sc_sr; int /*<<< orphan*/  sc_rid; int /*<<< orphan*/ * sc_tq; int /*<<< orphan*/  sc_rngco; int /*<<< orphan*/  sc_cryptotask; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SB_AES_INT ; 
 int /*<<< orphan*/  SB_AI_CLEAR_INTR ; 
 int /*<<< orphan*/  SB_GLD_MSR_CAP ; 
 int /*<<< orphan*/  SB_GLD_MSR_CTRL ; 
 int SB_GMC_SBI ; 
 int SB_GMC_SBY ; 
 int SB_GMC_T_NE ; 
 int SB_GMC_T_SEL3 ; 
 int SB_GMC_T_SEL_MASK ; 
 int SB_GMC_T_TM ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct glxsb_softc*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct glxsb_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (struct glxsb_softc*) ; 
 int /*<<< orphan*/  glxsb_crypto_task ; 
 scalar_t__ FUNC10 (struct glxsb_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct glxsb_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct glxsb_softc *sc = FUNC7(dev);
	uint64_t msr;

	sc->sc_dev = dev;
	msr = FUNC13(SB_GLD_MSR_CAP);

	if ((msr & 0xFFFF00) != 0x130400) {
		FUNC8(dev, "unknown ID 0x%x\n",
		    (int)((msr & 0xFFFF00) >> 16));
		return (ENXIO);
	}

	FUNC12(dev);

	/* Map in the security block configuration/control registers */
	sc->sc_rid = FUNC0(0);
	sc->sc_sr = FUNC2(dev, SYS_RES_MEMORY, &sc->sc_rid,
	    RF_ACTIVE);
	if (sc->sc_sr == NULL) {
		FUNC8(dev, "cannot map register space\n");
		return (ENXIO);
	}

	/*
	 * Configure the Security Block.
	 *
	 * We want to enable the noise generator (T_NE), and enable the
	 * linear feedback shift register and whitener post-processing
	 * (T_SEL = 3).  Also ensure that test mode (deterministic values)
	 * is disabled.
	 */
	msr = FUNC13(SB_GLD_MSR_CTRL);
	msr &= ~(SB_GMC_T_TM | SB_GMC_T_SEL_MASK);
	msr |= SB_GMC_T_NE | SB_GMC_T_SEL3;
#if 0
	msr |= SB_GMC_SBI | SB_GMC_SBY;		/* for AES, if necessary */
#endif
	FUNC17(SB_GLD_MSR_CTRL, msr);

	/* Disable interrupts */
	FUNC4(sc->sc_sr, SB_AES_INT, SB_AI_CLEAR_INTR);

	/* Allocate a contiguous DMA-able buffer to work in */
	if (FUNC10(sc) != 0)
		goto fail0;

	/* Initialize our task queue */
	sc->sc_tq = FUNC14("glxsb_taskq", M_NOWAIT | M_ZERO,
	    taskqueue_thread_enqueue, &sc->sc_tq);
	if (sc->sc_tq == NULL) {
		FUNC8(dev, "cannot create task queue\n");
		goto fail0;
	}
	if (FUNC16(&sc->sc_tq, 1, PI_NET, "%s taskq",
	    FUNC6(dev)) != 0) {
		FUNC8(dev, "cannot start task queue\n");
		goto fail1;
	}
	FUNC1(&sc->sc_cryptotask, 0, glxsb_crypto_task, sc);

	/* Initialize crypto */
	if (FUNC9(sc) != 0)
		goto fail1;

	/* Install a periodic collector for the "true" (AMD's word) RNG */
	if (hz > 100)
		sc->sc_rnghz = hz / 100;
	else
		sc->sc_rnghz = 1;
	FUNC5(&sc->sc_rngco, 1);
	FUNC11(sc);

	return (0);

fail1:
	FUNC15(sc->sc_tq);
fail0:
	FUNC3(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_sr);
	return (ENXIO);
}