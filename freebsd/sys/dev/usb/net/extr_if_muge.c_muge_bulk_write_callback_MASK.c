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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tx_cmd_b ;
typedef  int /*<<< orphan*/  tx_cmd_a ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct muge_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MCLBYTES ; 
 int MUGE_FLAG_LINK ; 
 int TX_CMD_A_FCS_ ; 
 int TX_CMD_A_LEN_MASK_ ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct muge_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct muge_softc*,char*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC14 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*) ; 
 struct muge_softc* FUNC19 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct muge_softc *sc = FUNC19(xfer);
	struct ifnet *ifp = FUNC9(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	int nframes;
	uint32_t frm_len = 0, tx_cmd_a = 0, tx_cmd_b = 0;

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC7(sc,
		    "USB TRANSFER status: USB_ST_TRANSFERRED\n");
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		/* FALLTHROUGH */
	case USB_ST_SETUP:
		FUNC7(sc, "USB TRANSFER status: USB_ST_SETUP\n");
tr_setup:
		if ((sc->sc_flags & MUGE_FLAG_LINK) == 0 ||
			(ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
			FUNC7(sc,
			    "sc->sc_flags & MUGE_FLAG_LINK: %d\n",
			    (sc->sc_flags & MUGE_FLAG_LINK));
			FUNC7(sc,
			    "ifp->if_drv_flags & IFF_DRV_OACTIVE: %d\n",
			    (ifp->if_drv_flags & IFF_DRV_OACTIVE));
			FUNC7(sc,
			    "USB TRANSFER not sending: no link or controller is busy \n");
			/*
			 * Don't send anything if there is no link or
			 * controller is busy.
			 */
			return;
		}
		for (nframes = 0; nframes < 16 &&
		    !FUNC2(&ifp->if_snd); nframes++) {
			FUNC1(&ifp->if_snd, m);
			if (m == NULL)
				break;
			FUNC16(xfer, nframes * MCLBYTES,
				nframes);
			frm_len = 0;
			pc = FUNC14(xfer, nframes);

			/*
			 * Each frame is prefixed with two 32-bit values
			 * describing the length of the packet and buffer.
			 */
			tx_cmd_a = (m->m_pkthdr.len & TX_CMD_A_LEN_MASK_) |
			     TX_CMD_A_FCS_;
			tx_cmd_a = FUNC4(tx_cmd_a);
			FUNC10(pc, 0, &tx_cmd_a, sizeof(tx_cmd_a));

			tx_cmd_b = 0;

			/* TCP LSO Support will probably be implemented here. */
			tx_cmd_b = FUNC4(tx_cmd_b);
			FUNC10(pc, 4, &tx_cmd_b, sizeof(tx_cmd_b));

			frm_len += 8;

			/* Next copy in the actual packet */
			FUNC12(pc, frm_len, m, 0, m->m_pkthdr.len);
			frm_len += m->m_pkthdr.len;

			FUNC5(ifp, IFCOUNTER_OPACKETS, 1);

			/*
			 * If there's a BPF listener, bounce a copy of this
			 * frame to it.
			 */
			FUNC0(ifp, m);
			FUNC6(m);

			/* Set frame length. */
			FUNC15(xfer, nframes, frm_len);
		}

		FUNC7(sc, "USB TRANSFER nframes: %d\n", nframes);
		if (nframes != 0) {
			FUNC7(sc, "USB TRANSFER submit attempt\n");
			FUNC17(xfer, nframes);
			FUNC13(xfer);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		}
		return;

	default:
		FUNC5(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		if (error != USB_ERR_CANCELLED) {
			FUNC8(sc,
			    "usb error on tx: %s\n", FUNC11(error));
			FUNC18(xfer);
			goto tr_setup;
		}
		return;
	}
}