#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct udbp_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_node; struct mbuf* sc_bulk_in_buffer; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int /*<<< orphan*/  m_data; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int UDBP_FLAG_READ_STALL ; 
 size_t UDBP_T_RD_CS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udbp_bulk_read_complete ; 
 int /*<<< orphan*/  FUNC6 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct usb_xfer *xfer, usb_error_t error)
{
	struct udbp_softc *sc = FUNC12(xfer);
	struct usb_page_cache *pc;
	struct mbuf *m;
	int actlen;

	FUNC13(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:

		/* allocate new mbuf */

		FUNC2(m, M_NOWAIT, MT_DATA);

		if (m == NULL) {
			goto tr_setup;
		}

		if (!(FUNC1(m, M_NOWAIT))) {
			FUNC4(m);
			goto tr_setup;
		}
		m->m_pkthdr.len = m->m_len = actlen;

		pc = FUNC9(xfer, 0);
		FUNC6(pc, 0, m->m_data, actlen);

		sc->sc_bulk_in_buffer = m;

		FUNC0("received package %d bytes\n", actlen);

	case USB_ST_SETUP:
tr_setup:
		if (sc->sc_bulk_in_buffer) {
			FUNC5(sc->sc_node, NULL, &udbp_bulk_read_complete, NULL, 0);
			return;
		}
		if (sc->sc_flags & UDBP_FLAG_READ_STALL) {
			FUNC7(sc->sc_xfer[UDBP_T_RD_CS]);
			return;
		}
		FUNC11(xfer, 0, FUNC10(xfer));
		FUNC8(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			sc->sc_flags |= UDBP_FLAG_READ_STALL;
			FUNC7(sc->sc_xfer[UDBP_T_RD_CS]);
		}
		return;

	}
}