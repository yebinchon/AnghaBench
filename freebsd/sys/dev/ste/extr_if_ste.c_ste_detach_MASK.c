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
struct ste_softc {int /*<<< orphan*/  ste_mtx; scalar_t__ ste_res; int /*<<< orphan*/  ste_res_id; int /*<<< orphan*/  ste_res_type; scalar_t__ ste_irq; scalar_t__ ste_intrhand; scalar_t__ ste_miibus; int /*<<< orphan*/  ste_callout; struct ifnet* ste_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ste_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ste_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ste_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ste_softc *sc;
	struct ifnet *ifp;

	sc = FUNC8(dev);
	FUNC0(FUNC14(&sc->ste_mtx), ("ste mutex not initialized"));
	ifp = sc->ste_ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* These should only be active if attach succeeded */
	if (FUNC9(dev)) {
		FUNC10(ifp);
		FUNC1(sc);
		FUNC16(sc);
		FUNC2(sc);
		FUNC6(&sc->ste_callout);
	}
	if (sc->ste_miibus)
		FUNC7(dev, sc->ste_miibus);
	FUNC3(dev);

	if (sc->ste_intrhand)
		FUNC5(dev, sc->ste_irq, sc->ste_intrhand);
	if (sc->ste_irq)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->ste_irq);
	if (sc->ste_res)
		FUNC4(dev, sc->ste_res_type, sc->ste_res_id,
		    sc->ste_res);

	if (ifp)
		FUNC12(ifp);

	FUNC15(sc);
	FUNC13(&sc->ste_mtx);

	return (0);
}