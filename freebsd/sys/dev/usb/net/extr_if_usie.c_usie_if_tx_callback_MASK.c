#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {TYPE_1__ hip; } ;
struct usie_softc {TYPE_3__ sc_txd; struct ifnet* sc_ifp; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC4 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC12 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 struct usie_softc* FUNC15 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct usie_softc *sc = FUNC15(xfer);
	struct usb_page_cache *pc;
	struct ifnet *ifp = sc->sc_ifp;
	struct mbuf *m;
	uint16_t size;

	switch (FUNC4(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC2(11, "transfer complete\n");
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		FUNC6(ifp, IFCOUNTER_OPACKETS, 1);

		/* fall though */
	case USB_ST_SETUP:
tr_setup:

		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;

		FUNC3(&ifp->if_snd, m);
		if (m == NULL)
			break;

		if (m->m_pkthdr.len > (int)(MCLBYTES - ETHER_HDR_LEN +
		    ETHER_CRC_LEN - sizeof(sc->sc_txd))) {
			FUNC1("packet len is too big: %d\n",
			    m->m_pkthdr.len);
			break;
		}
		pc = FUNC12(xfer, 0);

		sc->sc_txd.hip.len = FUNC5(m->m_pkthdr.len +
		    ETHER_HDR_LEN + ETHER_CRC_LEN);
		size = sizeof(sc->sc_txd);

		FUNC8(pc, 0, &sc->sc_txd, size);
		FUNC10(pc, size, m, 0, m->m_pkthdr.len);
		FUNC13(xfer, 0, m->m_pkthdr.len +
		    size + ETHER_CRC_LEN);

		FUNC0(ifp, m);

		FUNC7(m);

		FUNC11(xfer);
		break;

	default:			/* Error */
		FUNC1("USB transfer error, %s\n",
		    FUNC9(error));
		FUNC6(ifp, IFCOUNTER_OERRORS, 1);

		if (error != USB_ERR_CANCELLED) {
			FUNC14(xfer);
			FUNC6(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		break;
	}
}