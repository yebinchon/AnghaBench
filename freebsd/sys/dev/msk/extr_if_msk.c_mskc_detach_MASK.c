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
struct msk_softc {int msk_pflags; int /*<<< orphan*/  msk_mtx; int /*<<< orphan*/ * msk_res; int /*<<< orphan*/  msk_res_spec; int /*<<< orphan*/ * msk_irq; int /*<<< orphan*/  msk_irq_spec; int /*<<< orphan*/ * msk_intrhand; int /*<<< orphan*/ ** msk_devs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_HWE_IMSK ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS_RST_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int MSK_FLAG_MSI ; 
 size_t MSK_PORT_A ; 
 size_t MSK_PORT_B ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  Y2_LED_STAT_OFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct msk_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct msk_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct msk_softc *sc;

	sc = FUNC9(dev);
	FUNC3(FUNC14(&sc->msk_mtx), ("msk mutex not initialized"));

	if (FUNC10(dev)) {
		if (sc->msk_devs[MSK_PORT_A] != NULL) {
			FUNC11(FUNC8(sc->msk_devs[MSK_PORT_A]),
			    M_DEVBUF);
			FUNC7(dev, sc->msk_devs[MSK_PORT_A]);
		}
		if (sc->msk_devs[MSK_PORT_B] != NULL) {
			FUNC11(FUNC8(sc->msk_devs[MSK_PORT_B]),
			    M_DEVBUF);
			FUNC7(dev, sc->msk_devs[MSK_PORT_B]);
		}
		FUNC4(dev);
	}

	/* Disable all interrupts. */
	FUNC2(sc, B0_IMSK, 0);
	FUNC0(sc, B0_IMSK);
	FUNC2(sc, B0_HWE_IMSK, 0);
	FUNC0(sc, B0_HWE_IMSK);

	/* LED Off. */
	FUNC1(sc, B0_CTST, Y2_LED_STAT_OFF);

	/* Put hardware reset. */
	FUNC1(sc, B0_CTST, CS_RST_SET);

	FUNC12(sc);

	if (sc->msk_intrhand) {
		FUNC6(dev, sc->msk_irq[0], sc->msk_intrhand);
		sc->msk_intrhand = NULL;
	}
	FUNC5(dev, sc->msk_irq_spec, sc->msk_irq);
	if ((sc->msk_pflags & MSK_FLAG_MSI) != 0)
		FUNC15(dev);
	FUNC5(dev, sc->msk_res_spec, sc->msk_res);
	FUNC13(&sc->msk_mtx);

	return (0);
}