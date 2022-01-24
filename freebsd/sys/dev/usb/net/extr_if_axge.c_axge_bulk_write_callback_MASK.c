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
typedef  int /*<<< orphan*/  txhdr ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_snd; } ;
struct axge_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct axge_frame_txhdr {int /*<<< orphan*/  len; int /*<<< orphan*/  mss; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_CSUM_DISABLE ; 
 int AXGE_CSUM_FEATURES ; 
 int AXGE_FLAG_LINK ; 
 int AXGE_N_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFCAP_TXCSUM ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC4 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 struct ifnet* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int,struct axge_frame_txhdr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC12 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*) ; 
 struct axge_softc* FUNC17 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC18(struct usb_xfer *xfer, usb_error_t error)
{
	struct axge_softc *sc;
	struct ifnet *ifp;
	struct usb_page_cache *pc;
	struct mbuf *m;
	struct axge_frame_txhdr txhdr;
	int nframes, pos;

	sc = FUNC17(xfer);
	ifp = FUNC8(&sc->sc_ue);

	switch (FUNC4(xfer)) {
	case USB_ST_TRANSFERRED:
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_flags & AXGE_FLAG_LINK) == 0 ||
		    (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
			/*
			 * Don't send anything if there is no link or
			 * controller is busy.
			 */
			return;
		}

		for (nframes = 0; nframes < AXGE_N_FRAMES &&
		    !FUNC3(&ifp->if_snd); nframes++) {
			FUNC2(&ifp->if_snd, m);
			if (m == NULL)
				break;
			FUNC14(xfer, nframes * MCLBYTES,
			    nframes);
			pc = FUNC12(xfer, nframes);
			txhdr.mss = 0;
			txhdr.len = FUNC5(FUNC0(m->m_pkthdr.len));
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0 &&
			    (m->m_pkthdr.csum_flags & AXGE_CSUM_FEATURES) == 0)
				txhdr.len |= FUNC5(AXGE_CSUM_DISABLE);

			pos = 0;
			FUNC9(pc, pos, &txhdr, sizeof(txhdr));
			pos += sizeof(txhdr);
			FUNC10(pc, pos, m, 0, m->m_pkthdr.len);
			pos += m->m_pkthdr.len;

			/*
			 * if there's a BPF listener, bounce a copy
			 * of this frame to him:
			 */
			FUNC1(ifp, m);

			FUNC7(m);

			/* Set frame length. */
			FUNC13(xfer, nframes, pos);
		}
		if (nframes != 0) {
			/*
			 * XXX
			 * Update TX packet counter here. This is not
			 * correct way but it seems that there is no way
			 * to know how many packets are sent at the end
			 * of transfer because controller combines
			 * multiple writes into single one if there is
			 * room in TX buffer of controller.
			 */
			FUNC6(ifp, IFCOUNTER_OPACKETS, nframes);
			FUNC15(xfer, nframes);
			FUNC11(xfer);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		}
		return;
		/* NOTREACHED */
	default:
		FUNC6(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		if (error != USB_ERR_CANCELLED) {
			FUNC16(xfer);
			goto tr_setup;
		}
		return;

	}
}