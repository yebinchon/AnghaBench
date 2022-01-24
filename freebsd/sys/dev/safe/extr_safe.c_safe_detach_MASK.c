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
struct safe_softc {int /*<<< orphan*/  sc_sr; int /*<<< orphan*/  sc_dstdmat; int /*<<< orphan*/  sc_srcdmat; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_ringalloc; int /*<<< orphan*/  sc_ringmtx; int /*<<< orphan*/  sc_spalloc; int /*<<< orphan*/  sc_dpalloc; scalar_t__ sc_rndtest; int /*<<< orphan*/  sc_cid; int /*<<< orphan*/  sc_rngto; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BS_BAR ; 
 int /*<<< orphan*/  SAFE_HI_MASK ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct safe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct safe_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct safe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct safe_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct safe_softc *sc = FUNC7(dev);

	/* XXX wait/abort active ops */

	FUNC0(sc, SAFE_HI_MASK, 0);		/* disable interrupts */

	FUNC5(&sc->sc_rngto);

	FUNC6(sc->sc_cid);

#ifdef SAFE_RNDTEST
	if (sc->sc_rndtest)
		rndtest_detach(sc->sc_rndtest);
#endif

	FUNC10(sc);
	FUNC11(sc, &sc->sc_dpalloc);
	FUNC11(sc, &sc->sc_spalloc);
	FUNC8(&sc->sc_ringmtx);
	FUNC11(sc, &sc->sc_ringalloc);

	FUNC2(dev);
	FUNC4(dev, sc->sc_irq, sc->sc_ih);
	FUNC3(dev, SYS_RES_IRQ, 0, sc->sc_irq);

	FUNC1(sc->sc_srcdmat);
	FUNC1(sc->sc_dstdmat);
	FUNC3(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);

	return (0);
}