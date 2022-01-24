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
struct sis_softc {int /*<<< orphan*/  sis_mtx; int /*<<< orphan*/ * sis_res; scalar_t__ sis_intrhand; scalar_t__ sis_miibus; int /*<<< orphan*/  sis_stat_ch; struct ifnet* sis_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sis_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sis_softc*) ; 
 int /*<<< orphan*/  sis_res_spec ; 
 int /*<<< orphan*/  FUNC16 (struct sis_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct sis_softc	*sc;
	struct ifnet		*ifp;

	sc = FUNC8(dev);
	FUNC0(FUNC14(&sc->sis_mtx), ("sis mutex not initialized"));
	ifp = sc->sis_ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* These should only be active if attach succeeded. */
	if (FUNC9(dev)) {
		FUNC1(sc);
		FUNC16(sc);
		FUNC2(sc);
		FUNC6(&sc->sis_stat_ch);
		FUNC10(ifp);
	}
	if (sc->sis_miibus)
		FUNC7(dev, sc->sis_miibus);
	FUNC3(dev);

	if (sc->sis_intrhand)
		FUNC5(dev, sc->sis_res[1], sc->sis_intrhand);
	FUNC4(dev, sis_res_spec, sc->sis_res);

	if (ifp)
		FUNC12(ifp);

	FUNC15(sc);

	FUNC13(&sc->sis_mtx);

	return (0);
}