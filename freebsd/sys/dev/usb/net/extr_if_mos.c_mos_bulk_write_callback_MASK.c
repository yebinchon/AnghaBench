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
struct mos_softc {int /*<<< orphan*/  sc_ue; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC10 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 struct mos_softc* FUNC13 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC14(struct usb_xfer *xfer, usb_error_t error)
{
	struct mos_softc *sc = FUNC13(xfer);
	struct ifnet *ifp = FUNC6(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;



	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC2("transfer of complete");
		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		/*
		 * XXX: don't send anything if there is no link?
		 */
		FUNC1(&ifp->if_snd, m);
		if (m == NULL)
			return;

		pc = FUNC10(xfer, 0);
		FUNC8(pc, 0, m, 0, m->m_pkthdr.len);

		FUNC11(xfer, 0, m->m_pkthdr.len);


		/*
		 * if there's a BPF listener, bounce a copy
		 * of this frame to him:
		 */
		FUNC0(ifp, m);

		FUNC5(m);

		FUNC9(xfer);

		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
		return;
	default:
		FUNC2("usb error on tx: %s\n", FUNC7(error));
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);
		if (error != USB_ERR_CANCELLED) {
			FUNC12(xfer);
			goto tr_setup;
		}
		return;
	}
}