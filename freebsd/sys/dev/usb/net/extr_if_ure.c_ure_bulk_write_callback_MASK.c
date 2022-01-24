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
typedef  int /*<<< orphan*/  txpkt ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ure_txpkt {int /*<<< orphan*/  ure_pktlen; } ;
struct ure_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int URE_FLAG_LINK ; 
 int URE_TKPKT_TX_FS ; 
 int URE_TKPKT_TX_LS ; 
 int URE_TXPKT_LEN_MASK ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ure_txpkt*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int,struct ure_txpkt*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 struct ure_softc* FUNC16 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC17(struct usb_xfer *xfer, usb_error_t error)
{
	struct ure_softc *sc = FUNC16(xfer);
	struct ifnet *ifp = FUNC8(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	struct ure_txpkt txpkt;
	int len, pos;

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(11, "transfer complete\n");
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_flags & URE_FLAG_LINK) == 0 ||
		    (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
			/*
			 * don't send anything if there is no link !
			 */
			return;
		}
		FUNC2(&ifp->if_snd, m);
		if (m == NULL)
			break;
		pos = 0;
		len = m->m_pkthdr.len;
		pc = FUNC13(xfer, 0);
		FUNC7(&txpkt, 0, sizeof(txpkt));
		txpkt.ure_pktlen = FUNC4((len & URE_TXPKT_LEN_MASK) |
		    URE_TKPKT_TX_FS | URE_TKPKT_TX_LS);
		FUNC9(pc, pos, &txpkt, sizeof(txpkt));
		pos += sizeof(txpkt);
		FUNC11(pc, pos, m, 0, m->m_pkthdr.len);
		pos += m->m_pkthdr.len;

		FUNC5(ifp, IFCOUNTER_OPACKETS, 1);

		/*
		 * If there's a BPF listener, bounce a copy
		 * of this frame to him.
		 */
		FUNC0(ifp, m);

		FUNC6(m);

		/* Set frame length. */
		FUNC14(xfer, 0, pos);

		FUNC12(xfer);
		ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		return;
	default:			/* Error */
		FUNC1(11, "transfer error, %s\n",
		    FUNC10(error));

		FUNC5(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC15(xfer);
			goto tr_setup;
		}
		return;
	}
}