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
struct ifnet {int dummy; } ;
struct dme_softc {scalar_t__ dme_vcc_regulator; int /*<<< orphan*/  dme_mtx; scalar_t__ dme_res; scalar_t__ dme_irq; scalar_t__ dme_intrhand; scalar_t__ dme_miibus; int /*<<< orphan*/  dme_tick_ch; struct ifnet* dme_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dme_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct dme_softc *sc;
	struct ifnet *ifp;

	sc = FUNC8(dev);
	FUNC2(FUNC14(&sc->dme_mtx), ("dme mutex not initialized"));

	ifp = sc->dme_ifp;

	if (FUNC9(dev)) {
		FUNC0(sc);
		FUNC10(sc);
		FUNC1(sc);
		FUNC11(ifp);
		FUNC6(&sc->dme_tick_ch);
	}

	if (sc->dme_miibus)
		FUNC7(dev, sc->dme_miibus);
	FUNC3(dev);

	if (sc->dme_vcc_regulator != 0)
		FUNC15(sc->dme_vcc_regulator);
	if (sc->dme_intrhand)
		FUNC5(dev, sc->dme_irq, sc->dme_intrhand);
	if (sc->dme_irq)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->dme_irq);
	if (sc->dme_res)
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->dme_res);

	if (ifp != NULL)
		FUNC12(ifp);

	FUNC13(&sc->dme_mtx);

	return (0);
}