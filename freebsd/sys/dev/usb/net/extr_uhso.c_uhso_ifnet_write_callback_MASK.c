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
struct uhso_softc {struct ifnet* sc_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct uhso_softc* FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhso_softc *sc = FUNC12(xfer);
	struct ifnet *ifp = sc->sc_ifp;
	struct usb_page_cache *pc;
	struct mbuf *m;
	int actlen;

	FUNC13(xfer, &actlen, NULL, NULL, NULL);

	FUNC2(3, "status %d, actlen=%d\n", FUNC3(xfer), actlen);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	case USB_ST_SETUP:
tr_setup:
		FUNC1(&ifp->if_snd, m);
		if (m == NULL)
			break;

		ifp->if_drv_flags |= IFF_DRV_OACTIVE;

		if (m->m_pkthdr.len > MCLBYTES)
			m->m_pkthdr.len = MCLBYTES;

		FUNC10(xfer, 0, m->m_pkthdr.len);
		pc = FUNC9(xfer, 0);
		FUNC7(pc, 0, m, 0, m->m_pkthdr.len);
		FUNC8(xfer);

		FUNC0(ifp, m);
		FUNC5(m);
		break;
	default:
		FUNC2(0, "error: %s\n", FUNC6(error));
		if (error == USB_ERR_CANCELLED)
			break;
		FUNC11(xfer);
		goto tr_setup;
	}
}