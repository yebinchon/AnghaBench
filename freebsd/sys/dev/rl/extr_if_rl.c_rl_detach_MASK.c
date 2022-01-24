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
struct rl_softc {int suspended; int /*<<< orphan*/  rl_mtx; scalar_t__ rl_res; int /*<<< orphan*/  rl_res_id; int /*<<< orphan*/  rl_res_type; scalar_t__* rl_irq; scalar_t__* rl_intrhand; scalar_t__ rl_miibus; int /*<<< orphan*/  rl_stat_callout; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct rl_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct rl_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;

	sc = FUNC8(dev);
	ifp = sc->rl_ifp;

	FUNC0(FUNC14(&sc->rl_mtx), ("rl mutex not initialized"));

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif
	/* These should only be active if attach succeeded */
	if (FUNC9(dev)) {
		FUNC1(sc);
		FUNC16(sc);
		FUNC2(sc);
		FUNC6(&sc->rl_stat_callout);
		FUNC10(ifp);
	}
#if 0
	sc->suspended = 1;
#endif
	if (sc->rl_miibus)
		FUNC7(dev, sc->rl_miibus);
	FUNC3(dev);

	if (sc->rl_intrhand[0])
		FUNC5(dev, sc->rl_irq[0], sc->rl_intrhand[0]);
	if (sc->rl_irq[0])
		FUNC4(dev, SYS_RES_IRQ, 0, sc->rl_irq[0]);
	if (sc->rl_res)
		FUNC4(dev, sc->rl_res_type, sc->rl_res_id,
		    sc->rl_res);

	if (ifp)
		FUNC12(ifp);

	FUNC15(sc);

	FUNC13(&sc->rl_mtx);

	return (0);
}