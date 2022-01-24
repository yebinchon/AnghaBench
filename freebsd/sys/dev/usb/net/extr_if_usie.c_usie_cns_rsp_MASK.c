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
struct usie_softc {int sc_rssi; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;
struct usie_cns {int /*<<< orphan*/  id; int /*<<< orphan*/  obj; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_flags; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int USIE_CNS_ID_INIT ; 
 int USIE_CNS_ID_STOP ; 
#define  USIE_CNS_OB_LINK_UPDATE 131 
#define  USIE_CNS_OB_PDP_READ 130 
#define  USIE_CNS_OB_PROF_WRITE 129 
#define  USIE_CNS_OB_RSSI 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct usie_softc*) ; 

__attribute__((used)) static void
FUNC5(struct usie_softc *sc, struct usie_cns *cns)
{
	struct ifnet *ifp = sc->sc_ifp;

	FUNC0("received CnS\n");

	switch (FUNC1(cns->obj)) {
	case USIE_CNS_OB_LINK_UPDATE:
		if (FUNC2(cns->id) & USIE_CNS_ID_INIT)
			FUNC4(sc);
		else if (FUNC2(cns->id) & USIE_CNS_ID_STOP) {
			ifp->if_flags &= ~IFF_UP;
			ifp->if_drv_flags &=
			    ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
		} else
			FUNC0("undefined link update\n");
		break;

	case USIE_CNS_OB_RSSI:
		sc->sc_rssi = FUNC1(*(int16_t *)(cns + 1));
		if (sc->sc_rssi <= 0)
			FUNC3(sc->sc_dev, "No signal\n");
		else {
			FUNC3(sc->sc_dev, "RSSI=%ddBm\n",
			    sc->sc_rssi - 110);
		}
		break;

	case USIE_CNS_OB_PROF_WRITE:
		break;

	case USIE_CNS_OB_PDP_READ:
		break;

	default:
		FUNC0("undefined CnS\n");
		break;
	}
}