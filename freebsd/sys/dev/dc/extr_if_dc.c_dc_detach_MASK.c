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
struct ifnet {int if_capenable; } ;
struct dc_softc {int /*<<< orphan*/  dc_mtx; struct dc_mediainfo* dc_srom; struct dc_mediainfo* dc_mi; struct dc_mediainfo* dc_pnic_rx_buf; scalar_t__ dc_res; scalar_t__ dc_irq; scalar_t__ dc_intrhand; scalar_t__ dc_miibus; int /*<<< orphan*/  dc_wdog_ch; int /*<<< orphan*/  dc_stat_ch; struct ifnet* dc_ifp; } ;
struct dc_mediainfo {struct dc_mediainfo* dc_next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_RES ; 
 int /*<<< orphan*/  DC_RID ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dc_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct dc_mediainfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct dc_softc *sc;
	struct ifnet *ifp;
	struct dc_mediainfo *m;

	sc = FUNC10(dev);
	FUNC2(FUNC17(&sc->dc_mtx), ("dc mutex not initialized"));

	ifp = sc->dc_ifp;

#ifdef DEVICE_POLLING
	if (ifp != NULL && ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* These should only be active if attach succeeded */
	if (FUNC11(dev)) {
		FUNC0(sc);
		FUNC8(sc);
		FUNC1(sc);
		FUNC6(&sc->dc_stat_ch);
		FUNC6(&sc->dc_wdog_ch);
		FUNC12(ifp);
	}
	if (sc->dc_miibus)
		FUNC9(dev, sc->dc_miibus);
	FUNC3(dev);

	if (sc->dc_intrhand)
		FUNC5(dev, sc->dc_irq, sc->dc_intrhand);
	if (sc->dc_irq)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->dc_irq);
	if (sc->dc_res)
		FUNC4(dev, DC_RES, DC_RID, sc->dc_res);

	if (ifp != NULL)
		FUNC15(ifp);

	FUNC7(sc);

	FUNC14(sc->dc_pnic_rx_buf, M_DEVBUF);

	while (sc->dc_mi != NULL) {
		m = sc->dc_mi->dc_next;
		FUNC14(sc->dc_mi, M_DEVBUF);
		sc->dc_mi = m;
	}
	FUNC14(sc->dc_srom, M_DEVBUF);

	FUNC16(&sc->dc_mtx);

	return (0);
}