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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_ierrors; } ;
struct rtwn_softc {struct ieee80211com sc_ic; } ;
struct rtwn_usb_softc {int /*<<< orphan*/  uc_rx_inactive; int /*<<< orphan*/  uc_rx_active; struct rtwn_softc uc_sc; } ;
struct rtwn_data {int /*<<< orphan*/  buf; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 struct rtwn_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rtwn_data*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC7 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_node*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*,struct mbuf*) ; 
 struct mbuf* FUNC12 (struct rtwn_usb_softc*,struct usb_xfer*,struct rtwn_data*) ; 
 struct ieee80211_node* FUNC13 (struct rtwn_softc*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*) ; 
 struct rtwn_usb_softc* FUNC19 (struct usb_xfer*) ; 

void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct rtwn_usb_softc *uc = FUNC19(xfer);
	struct rtwn_softc *sc = &uc->uc_sc;
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211_node *ni;
	struct mbuf *m = NULL, *next;
	struct rtwn_data *data;

	FUNC1(sc);

	switch (FUNC7(xfer)) {
	case USB_ST_TRANSFERRED:
		data = FUNC4(&uc->uc_rx_active);
		if (data == NULL)
			goto tr_setup;
		FUNC6(&uc->uc_rx_active, next);
		m = FUNC12(uc, xfer, data);
		FUNC5(&uc->uc_rx_inactive, data, next);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		data = FUNC4(&uc->uc_rx_inactive);
		if (data == NULL) {
			FUNC0(m == NULL, ("mbuf isn't NULL"));
			goto finish;
		}
		FUNC6(&uc->uc_rx_inactive, next);
		FUNC5(&uc->uc_rx_active, data, next);
		FUNC17(xfer, 0, data->buf,
		    FUNC16(xfer));
		FUNC15(xfer);

		/*
		 * To avoid LOR we should unlock our private mutex here to call
		 * ieee80211_input() because here is at the end of a USB
		 * callback and safe to unlock.
		 */
		while (m != NULL) {
			next = m->m_nextpkt;
			m->m_nextpkt = NULL;

			ni = FUNC13(sc, m);

			FUNC3(sc);

			if (ni != NULL) {
				(void)FUNC10(ni, m);
				FUNC9(ni);
			} else {
				(void)FUNC11(ic, m);
			}
			FUNC2(sc);
			m = next;
		}
		break;
	default:
		/* needs it to the inactive queue due to a error. */
		data = FUNC4(&uc->uc_rx_active);
		if (data != NULL) {
			FUNC6(&uc->uc_rx_active, next);
			FUNC5(&uc->uc_rx_inactive, data, next);
		}
		if (error != USB_ERR_CANCELLED) {
			/* XXX restart device if frame was fragmented? */

			FUNC18(xfer);
			FUNC8(ic->ic_ierrors, 1);
			goto tr_setup;
		}
		break;
	}
finish:
	/* Kick-start more transmit in case we stalled */
	FUNC14(sc);
}