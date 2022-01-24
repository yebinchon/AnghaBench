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
struct ubt_softc {int /*<<< orphan*/  sc_scoq; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubt_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubt_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubt_softc*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC9 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 int FUNC14 (struct usb_xfer*,int) ; 
 struct usb_page_cache* FUNC15 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int,int) ; 
 struct ubt_softc* FUNC18 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubt_softc	*sc = FUNC18(xfer);
	struct usb_page_cache	*pc;
	struct mbuf		*m;
	int			n, space, offset;
	int			actlen, nframes;

	FUNC19(xfer, &actlen, NULL, NULL, &nframes);
	pc = FUNC15(xfer, 0);

	switch (FUNC9(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC3(sc, "sent %d bytes to isoc-out pipe\n", actlen);
		FUNC6(sc, actlen);
		FUNC8(sc);
		/* FALLTHROUGH */

	case USB_ST_SETUP:
send_next:
		offset = 0;
		space = FUNC16(xfer) * nframes;
		m = NULL;

		while (space > 0) {
			if (m == NULL) {
				FUNC4(sc);
				FUNC0(&sc->sc_scoq, m);
				FUNC5(sc);

				if (m == NULL)
					break;
			}

			n = FUNC11(space, m->m_pkthdr.len);
			if (n > 0) {
				FUNC12(pc, offset, m,0, n);
				FUNC10(m, n);

				offset += n;
				space -= n;
			}

			if (m->m_pkthdr.len == 0)
				FUNC2(m); /* sets m = NULL */
		}

		/* Put whatever is left from mbuf back on queue */
		if (m != NULL) {
			FUNC4(sc);
			FUNC1(&sc->sc_scoq, m);
			FUNC5(sc);
		}

		/*
		 * Calculate sizes for isoc frames.
		 * Note that offset could be 0 at this point (i.e. we have
		 * nothing to send). That is fine, as we have isoc. transfers
		 * going in both directions all the time. In this case it
		 * would be just empty isoc. transfer.
		 */

		for (n = 0; n < nframes; n ++) {
			FUNC17(xfer, n,
			    FUNC11(offset, FUNC16(xfer)));
			offset -= FUNC14(xfer, n);
		}

		FUNC13(xfer);
		break;

	default: /* Error */
		if (error != USB_ERR_CANCELLED) {
			FUNC7(sc);
			goto send_next;
		}

		/* transfer cancelled */
		break;
	}
}