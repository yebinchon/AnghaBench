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
struct rsu_softc {int /*<<< orphan*/  sc_rx_inactive; int /*<<< orphan*/  sc_rx_active; struct ieee80211com sc_ic; } ;
struct rsu_data {int /*<<< orphan*/  buf; } ;
struct mbuf {int /*<<< orphan*/  m_flags; struct mbuf* m_next; } ;
struct ieee80211_node {int ni_flags; } ;

/* Variables and functions */
 int IEEE80211_NODE_HT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_AMPDU ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*) ; 
 struct rsu_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rsu_data*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC7 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_node*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*,struct mbuf*) ; 
 struct ieee80211_node* FUNC12 (struct rsu_softc*,struct mbuf*) ; 
 struct mbuf* FUNC13 (struct usb_xfer*,struct rsu_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*) ; 
 struct rsu_softc* FUNC18 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC19(struct usb_xfer *xfer, usb_error_t error)
{
	struct rsu_softc *sc = FUNC18(xfer);
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211_node *ni;
	struct mbuf *m = NULL, *next;
	struct rsu_data *data;

	FUNC1(sc);

	switch (FUNC7(xfer)) {
	case USB_ST_TRANSFERRED:
		data = FUNC4(&sc->sc_rx_active);
		if (data == NULL)
			goto tr_setup;
		FUNC6(&sc->sc_rx_active, next);
		m = FUNC13(xfer, data);
		FUNC5(&sc->sc_rx_inactive, data, next);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		data = FUNC4(&sc->sc_rx_inactive);
		if (data == NULL) {
			FUNC0(m == NULL, ("mbuf isn't NULL"));
			return;
		}
		FUNC6(&sc->sc_rx_inactive, next);
		FUNC5(&sc->sc_rx_active, data, next);
		FUNC16(xfer, 0, data->buf,
		    FUNC15(xfer));
		FUNC14(xfer);
		/*
		 * To avoid LOR we should unlock our private mutex here to call
		 * ieee80211_input() because here is at the end of a USB
		 * callback and safe to unlock.
		 */
		while (m != NULL) {
			next = m->m_next;
			m->m_next = NULL;

			ni = FUNC12(sc, m);
			FUNC3(sc);

			if (ni != NULL) {
				if (ni->ni_flags & IEEE80211_NODE_HT)
					m->m_flags |= M_AMPDU;
				(void)FUNC10(ni, m);
				FUNC9(ni);
			} else
				(void)FUNC11(ic, m);

			FUNC2(sc);
			m = next;
		}
		break;
	default:
		/* needs it to the inactive queue due to a error. */
		data = FUNC4(&sc->sc_rx_active);
		if (data != NULL) {
			FUNC6(&sc->sc_rx_active, next);
			FUNC5(&sc->sc_rx_inactive, data, next);
		}
		if (error != USB_ERR_CANCELLED) {
			FUNC17(xfer);
			FUNC8(ic->ic_ierrors, 1);
			goto tr_setup;
		}
		break;
	}

}