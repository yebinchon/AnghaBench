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
struct usb_ether {int dummy; } ;
struct ure_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t URE_BULK_DT_WR ; 
 int URE_BYTE_EN_SIX_BYTES ; 
 int URE_CRWECR_CONFIG ; 
 int URE_CRWECR_NORAML ; 
 int URE_CR_RE ; 
 int URE_CR_TE ; 
 int URE_FMC_FCR_MCU_EN ; 
 int /*<<< orphan*/  FUNC1 (struct ure_softc*,int /*<<< orphan*/ ) ; 
 int URE_MCU_TYPE_PLA ; 
 int /*<<< orphan*/  URE_PLA_CR ; 
 int /*<<< orphan*/  URE_PLA_CRWECR ; 
 int /*<<< orphan*/  URE_PLA_FMC ; 
 int /*<<< orphan*/  URE_PLA_IDR ; 
 int /*<<< orphan*/  URE_PLA_MISC_1 ; 
 int URE_RXDY_GATED_EN ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct ure_softc* FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct ure_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ure_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC10 (struct ure_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ure_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ure_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct usb_ether *ue)
{
	struct ure_softc *sc = FUNC3(ue);
	struct ifnet *ifp = FUNC2(ue);

	FUNC1(sc, MA_OWNED);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	/* Cancel pending I/O. */
	FUNC9(ue);

	FUNC7(sc);

	/* Set MAC address. */
	FUNC10(sc, URE_PLA_CRWECR, URE_MCU_TYPE_PLA, URE_CRWECR_CONFIG);
	FUNC12(sc, URE_PLA_IDR, URE_MCU_TYPE_PLA | URE_BYTE_EN_SIX_BYTES,
	    FUNC0(ifp), 8);
	FUNC10(sc, URE_PLA_CRWECR, URE_MCU_TYPE_PLA, URE_CRWECR_NORAML);

	/* Reset the packet filter. */
	FUNC11(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA,
	    FUNC6(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA) &
	    ~URE_FMC_FCR_MCU_EN);
	FUNC11(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA,
	    FUNC6(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA) |
	    URE_FMC_FCR_MCU_EN);
	    
	/* Enable transmit and receive. */
	FUNC10(sc, URE_PLA_CR, URE_MCU_TYPE_PLA,
	    FUNC5(sc, URE_PLA_CR, URE_MCU_TYPE_PLA) | URE_CR_RE |
	    URE_CR_TE);

	FUNC11(sc, URE_PLA_MISC_1, URE_MCU_TYPE_PLA,
	    FUNC6(sc, URE_PLA_MISC_1, URE_MCU_TYPE_PLA) &
	    ~URE_RXDY_GATED_EN);

	/*  Configure RX filters. */
	FUNC8(ue);

	FUNC13(sc->sc_xfer[URE_BULK_DT_WR]);

	/* Indicate we are up and running. */
	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	/* Switch to selected media. */
	FUNC4(ifp);
}