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
struct ndis_softc {scalar_t__ ndis_iftype; int /*<<< orphan*/  ndis_parent_tag; int /*<<< orphan*/ * ndis_txpool; int /*<<< orphan*/  ifmedia; scalar_t__ ndis_80211; scalar_t__ ndis_txarray; scalar_t__ ndis_sc; scalar_t__ ndis_res_altmem; int /*<<< orphan*/  ndis_altmem_rid; scalar_t__ ndis_res_mem; int /*<<< orphan*/  ndis_mem_rid; scalar_t__ ndis_res_io; int /*<<< orphan*/  ndis_io_rid; scalar_t__ ndis_irq; int /*<<< orphan*/ * ndisusb_taskitem; int /*<<< orphan*/ * ndisusb_xferdoneitem; int /*<<< orphan*/ * ndis_inputitem; int /*<<< orphan*/ * ndis_resetitem; int /*<<< orphan*/ * ndis_startitem; int /*<<< orphan*/ * ndis_tickitem; int /*<<< orphan*/  ndis_ic; struct ifnet* ifp; } ;
struct ifnet {int /*<<< orphan*/  if_flags; } ;
typedef  int /*<<< orphan*/  driver_object ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ PCIBus ; 
 scalar_t__ PCMCIABus ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ndis_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,char*) ; 

int
FUNC20(device_t dev)
{
	struct ifnet		*ifp;
	struct ndis_softc	*sc;
	driver_object		*drv;

	sc = FUNC7(dev);
	FUNC1(sc);
	if (!sc->ndis_80211)
		ifp = sc->ifp;
	else
		ifp = NULL;
	if (ifp != NULL)
		ifp->if_flags &= ~IFF_UP;
	if (FUNC8(dev)) {
		FUNC2(sc);
		FUNC15(sc);
		if (sc->ndis_80211)
			FUNC11(&sc->ndis_ic);
		else if (ifp != NULL)
			FUNC9(ifp);
	} else
		FUNC2(sc);

	if (sc->ndis_tickitem != NULL)
		FUNC0(sc->ndis_tickitem);
	if (sc->ndis_startitem != NULL)
		FUNC0(sc->ndis_startitem);
	if (sc->ndis_resetitem != NULL)
		FUNC0(sc->ndis_resetitem);
	if (sc->ndis_inputitem != NULL)
		FUNC0(sc->ndis_inputitem);
	if (sc->ndisusb_xferdoneitem != NULL)
		FUNC0(sc->ndisusb_xferdoneitem);
	if (sc->ndisusb_taskitem != NULL)
		FUNC0(sc->ndisusb_taskitem);

	FUNC5(dev);
	FUNC16(sc);

	if (sc->ndis_irq)
		FUNC6(dev, SYS_RES_IRQ, 0, sc->ndis_irq);
	if (sc->ndis_res_io)
		FUNC6(dev, SYS_RES_IOPORT,
		    sc->ndis_io_rid, sc->ndis_res_io);
	if (sc->ndis_res_mem)
		FUNC6(dev, SYS_RES_MEMORY,
		    sc->ndis_mem_rid, sc->ndis_res_mem);
	if (sc->ndis_res_altmem)
		FUNC6(dev, SYS_RES_MEMORY,
		    sc->ndis_altmem_rid, sc->ndis_res_altmem);

	if (ifp != NULL)
		FUNC12(ifp);

	if (sc->ndis_sc)
		FUNC14(sc);

	if (sc->ndis_txarray)
		FUNC10(sc->ndis_txarray, M_DEVBUF);

	if (!sc->ndis_80211)
		FUNC13(&sc->ifmedia);

	if (sc->ndis_txpool != NULL)
		FUNC3(sc->ndis_txpool);

	/* Destroy the PDO for this device. */
	
	if (sc->ndis_iftype == PCIBus)
		drv = FUNC19(0, "PCI Bus");
	else if (sc->ndis_iftype == PCMCIABus)
		drv = FUNC19(0, "PCCARD Bus");
	else
		drv = FUNC19(0, "USB Bus");
	if (drv == NULL)
		FUNC17("couldn't find driver object");
	FUNC18(drv, dev);

	if (sc->ndis_iftype == PCIBus)
		FUNC4(sc->ndis_parent_tag);

	return (0);
}