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
struct sge_softc {int /*<<< orphan*/  sge_flags; int /*<<< orphan*/  sge_stat_ch; scalar_t__ sge_timer; struct ifnet* sge_ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int /*<<< orphan*/  RX_CTL ; 
 int /*<<< orphan*/  SGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct sge_softc*) ; 
 int /*<<< orphan*/  TX_CTL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sge_softc*) ; 

__attribute__((used)) static void
FUNC7(struct sge_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->sge_ifp;

	FUNC3(sc);

	sc->sge_timer = 0;
	FUNC4(&sc->sge_stat_ch);
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	FUNC1(sc, IntrMask, 0);
	FUNC0(sc, IntrMask);
	FUNC1(sc, IntrStatus, 0xffffffff);
	/* Stop TX/RX MAC. */
	FUNC1(sc, TX_CTL, 0x1a00);
	FUNC1(sc, RX_CTL, 0x1a00);
	/* XXX Can we assume active DMA cycles gone? */
	FUNC2(2000);
	FUNC1(sc, IntrMask, 0);
	FUNC1(sc, IntrStatus, 0xffffffff);

	sc->sge_flags &= ~SGE_FLAG_LINK;
	FUNC5(sc);
	FUNC6(sc);
}