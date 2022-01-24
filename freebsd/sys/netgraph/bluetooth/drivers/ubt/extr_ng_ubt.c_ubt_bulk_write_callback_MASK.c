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
struct ubt_softc {int /*<<< orphan*/  sc_aclq; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubt_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubt_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubt_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC9 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_page_cache*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 struct ubt_softc* FUNC16 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubt_softc	*sc = FUNC16(xfer);
	struct mbuf		*m;
	struct usb_page_cache	*pc;
	int			actlen;

	FUNC17(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC9(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC2(sc, "sent %d bytes to bulk-out pipe\n", actlen);
		FUNC5(sc, actlen);
		FUNC7(sc);
		/* FALLTHROUGH */

	case USB_ST_SETUP:
send_next:
		/* Get next mbuf, if any */
		FUNC3(sc);
		FUNC0(&sc->sc_aclq, m);
		FUNC4(sc);

		if (m == NULL) {
			FUNC2(sc, "ACL data queue is empty\n");
			break; /* transfer completed */
		}

		/*
		 * Copy ACL data frame back to a linear USB transfer buffer
		 * and schedule transfer
		 */

		pc = FUNC13(xfer, 0);
		FUNC11(pc, 0, m, 0, m->m_pkthdr.len);
		FUNC14(xfer, 0, m->m_pkthdr.len);

		FUNC2(sc, "bulk-out transfer has been started, len=%d\n",
			m->m_pkthdr.len);

		FUNC1(m);

		FUNC12(xfer);
		break;

	default: /* Error */
		if (error != USB_ERR_CANCELLED) {
			FUNC8(sc, "bulk-out transfer failed: %s\n",
				FUNC10(error));

			FUNC6(sc);

			/* try to clear stall first */
			FUNC15(xfer);
			goto send_next;
		}
			/* transfer cancelled */
		break;
	}
}