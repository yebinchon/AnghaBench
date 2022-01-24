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
typedef  int uint64_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_oerrors; } ;
struct urtw_softc {int /*<<< orphan*/  sc_txstatus; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  URTW_DEBUG_TXSTATUS ; 
 int URTW_STATUS_TYPE_TXCLOSE ; 
 int URTW_TX_MAXRETRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct urtw_softc* FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	struct urtw_softc *sc = FUNC3(xfer);
	struct ieee80211com *ic = &sc->sc_ic;
	int actlen, type, pktretry, seq;
	uint64_t val;

	FUNC4(xfer, &actlen, NULL, NULL, NULL);

	if (actlen != sizeof(uint64_t))
		return;

	val = FUNC2(sc->sc_txstatus);
	type = (val >> 30) & 0x3;
	if (type == URTW_STATUS_TYPE_TXCLOSE) {
		pktretry = val & 0xff;
		seq = (val >> 16) & 0xff;
		if (pktretry == URTW_TX_MAXRETRY)
			FUNC1(ic->ic_oerrors, 1);
		FUNC0(sc, URTW_DEBUG_TXSTATUS, "pktretry %d seq %#x\n",
		    pktretry, seq);
	}
}