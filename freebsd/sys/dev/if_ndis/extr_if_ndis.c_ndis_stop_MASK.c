#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ndis_softc {scalar_t__ ndis_iftype; int ndisusb_status; scalar_t__ ndis_evtpidx; scalar_t__ ndis_evtcidx; TYPE_2__* ndis_evt; scalar_t__ ndis_running; TYPE_1__* ifp; int /*<<< orphan*/  ndis_80211; scalar_t__ ndis_link; scalar_t__ ndis_tx_timer; int /*<<< orphan*/  ndis_stat_callout; } ;
struct TYPE_4__ {scalar_t__ ne_len; scalar_t__ ne_sts; int /*<<< orphan*/ * ne_buf; } ;
struct TYPE_3__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_TEMP ; 
 int NDISUSB_STATUS_DETACH ; 
 int NDIS_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 
 scalar_t__ PNPBus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ndis_softc*) ; 
 scalar_t__ ndisusb_halt ; 

__attribute__((used)) static void
FUNC5(struct ndis_softc *sc)
{
	int			i;

	FUNC2(&sc->ndis_stat_callout);

	FUNC0(sc);
	sc->ndis_tx_timer = 0;
	sc->ndis_link = 0;
	if (!sc->ndis_80211)
		sc->ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->ndis_running = 0;
	FUNC1(sc);

	if (sc->ndis_iftype != PNPBus ||
	    (sc->ndis_iftype == PNPBus &&
	     !(sc->ndisusb_status & NDISUSB_STATUS_DETACH) &&
	     ndisusb_halt != 0))
		FUNC4(sc);

	FUNC0(sc);
	for (i = 0; i < NDIS_EVENTS; i++) {
		if (sc->ndis_evt[i].ne_sts && sc->ndis_evt[i].ne_buf != NULL) {
			FUNC3(sc->ndis_evt[i].ne_buf, M_TEMP);
			sc->ndis_evt[i].ne_buf = NULL;
		}
		sc->ndis_evt[i].ne_sts = 0;
		sc->ndis_evt[i].ne_len = 0;
	}
	sc->ndis_evtcidx = 0;
	sc->ndis_evtpidx = 0;
	FUNC1(sc);
}