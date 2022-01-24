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
struct et_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_irq_handle; int /*<<< orphan*/ * sc_miibus; int /*<<< orphan*/  sc_tick; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ET_FLAG_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct et_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct et_softc *sc;

	sc = FUNC7(dev);
	if (FUNC8(dev)) {
		FUNC11(sc->ifp);
		FUNC0(sc);
		FUNC10(sc);
		FUNC1(sc);
		FUNC5(&sc->sc_tick);
	}

	if (sc->sc_miibus != NULL)
		FUNC6(dev, sc->sc_miibus);
	FUNC2(dev);

	if (sc->sc_irq_handle != NULL)
		FUNC4(dev, sc->sc_irq_res, sc->sc_irq_handle);
	if (sc->sc_irq_res != NULL)
		FUNC3(dev, SYS_RES_IRQ,
		    FUNC15(sc->sc_irq_res), sc->sc_irq_res);
	if ((sc->sc_flags & ET_FLAG_MSI) != 0)
		FUNC14(dev);
	if (sc->sc_mem_res != NULL)
		FUNC3(dev, SYS_RES_MEMORY,
		    FUNC15(sc->sc_mem_res), sc->sc_mem_res);

	if (sc->ifp != NULL)
		FUNC12(sc->ifp);

	FUNC9(sc);

	FUNC13(&sc->sc_mtx);

	return (0);
}