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
struct ifnet {int dummy; } ;
struct cue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CUE_RX_FRAMEERR ; 
 int /*<<< orphan*/  CUE_TX_EXCESSCOLL ; 
 int /*<<< orphan*/  CUE_TX_MULTICOLL ; 
 int /*<<< orphan*/  CUE_TX_SINGLECOLL ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct cue_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct cue_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC0(sc, MA_OWNED);

	FUNC2(ifp, IFCOUNTER_COLLISIONS, FUNC1(sc, CUE_TX_SINGLECOLL));
	FUNC2(ifp, IFCOUNTER_COLLISIONS, FUNC1(sc, CUE_TX_MULTICOLL));
	FUNC2(ifp, IFCOUNTER_COLLISIONS, FUNC1(sc, CUE_TX_EXCESSCOLL));

	if (FUNC1(sc, CUE_RX_FRAMEERR))
		FUNC2(ifp, IFCOUNTER_IERRORS, 1);
}