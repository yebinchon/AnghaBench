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
struct hifn_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_bar0res; int /*<<< orphan*/  sc_bar1res; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_dmamap; int /*<<< orphan*/  sc_dma; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_cid; scalar_t__ sc_rndtest; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_tickto; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_DMA_CNFG ; 
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  HIFN_BAR0 ; 
 int /*<<< orphan*/  HIFN_BAR1 ; 
 int HIFN_DMACNFG_DMARESET ; 
 int HIFN_DMACNFG_MODE ; 
 int HIFN_DMACNFG_MSTRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct hifn_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int 
FUNC13(device_t dev)
{
	struct hifn_softc *sc = FUNC10(dev);

	FUNC0(sc != NULL, ("hifn_detach: null software carrier!"));

	/* disable interrupts */
	FUNC1(sc, HIFN_1_DMA_IER, 0);

	/*XXX other resources */
	FUNC8(&sc->sc_tickto);
	FUNC8(&sc->sc_rngto);
#ifdef HIFN_RNDTEST
	if (sc->sc_rndtest)
		rndtest_detach(sc->sc_rndtest);
#endif

	/* Turn off DMA polling */
	FUNC1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
	    HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

	FUNC9(sc->sc_cid);

	FUNC5(dev);	/*XXX should be no children, right? */

	FUNC7(dev, sc->sc_irq, sc->sc_intrhand);
	/* XXX don't store rid */
	FUNC6(dev, SYS_RES_IRQ, 0, sc->sc_irq);

	FUNC3(sc->sc_dmat, sc->sc_dmamap);
	FUNC4(sc->sc_dmat, sc->sc_dma, sc->sc_dmamap);
	FUNC2(sc->sc_dmat);

	FUNC6(dev, SYS_RES_MEMORY, HIFN_BAR1, sc->sc_bar1res);
	FUNC6(dev, SYS_RES_MEMORY, HIFN_BAR0, sc->sc_bar0res);

	FUNC11(&sc->sc_mtx);

	return (0);
}