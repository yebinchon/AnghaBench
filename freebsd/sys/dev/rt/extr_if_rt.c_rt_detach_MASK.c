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
struct rt_softc {int rx_ring_count; int /*<<< orphan*/  mem; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  irqh; int /*<<< orphan*/  lock; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/ * rt_miibus; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  periodic_task; int /*<<< orphan*/  tx_done_task; int /*<<< orphan*/  rx_done_task; int /*<<< orphan*/  tx_watchdog_ch; int /*<<< orphan*/  periodic_ch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  RT_DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*) ; 
 int RT_SOFTC_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rt_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct rt_softc *sc;
	struct ifnet *ifp;
	int i;

	sc = FUNC8(dev);
	ifp = sc->ifp;

	FUNC0(sc, RT_DEBUG_ANY, "detaching\n");

	FUNC1(sc);

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	FUNC6(&sc->periodic_ch);
	FUNC6(&sc->tx_watchdog_ch);

	FUNC14(sc->taskqueue, &sc->rx_done_task);
	FUNC14(sc->taskqueue, &sc->tx_done_task);
	FUNC14(sc->taskqueue, &sc->periodic_task);

	/* free Tx and Rx rings */
	for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++)
		FUNC13(sc, &sc->tx_ring[i]);
	for (i = 0; i < sc->rx_ring_count; i++)
		FUNC12(sc, &sc->rx_ring[i]);

	FUNC2(sc);

#ifdef IF_RT_PHY_SUPPORT
	if (sc->rt_miibus != NULL)
		device_delete_child(dev, sc->rt_miibus);
#endif

	FUNC9(ifp);
	FUNC10(ifp);

	FUNC15(sc->taskqueue);

	FUNC11(&sc->lock);

	FUNC3(dev);
	FUNC5(dev, sc->irq, sc->irqh);
	FUNC4(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
	FUNC4(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);

	return (0);
}