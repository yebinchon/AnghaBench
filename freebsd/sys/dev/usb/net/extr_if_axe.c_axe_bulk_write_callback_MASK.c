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
struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capabilities; int /*<<< orphan*/  if_snd; } ;
struct axe_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct axe_sframe_hdr {int len; int ilen; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int AXE_CSUM_FEATURES ; 
 int AXE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*) ; 
 int AXE_TX_CSUM_DIS ; 
 int AXE_TX_CSUM_PSEUDO_HDR ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int IFCAP_TXCSUM ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC5 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,struct axe_sframe_hdr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC14 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*) ; 
 struct axe_softc* FUNC19 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct axe_softc *sc = FUNC19(xfer);
	struct axe_sframe_hdr hdr;
	struct ifnet *ifp = FUNC9(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	int nframes, pos;

	switch (FUNC5(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC2(11, "transfer complete\n");
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_flags & AXE_FLAG_LINK) == 0 ||
		    (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
			/*
			 * Don't send anything if there is no link or
			 * controller is busy.
			 */
			return;
		}

		for (nframes = 0; nframes < 16 &&
		    !FUNC4(&ifp->if_snd); nframes++) {
			FUNC3(&ifp->if_snd, m);
			if (m == NULL)
				break;
			FUNC16(xfer, nframes * MCLBYTES,
			    nframes);
			pos = 0;
			pc = FUNC14(xfer, nframes);
			if (FUNC0(sc)) {
				hdr.len = FUNC6(m->m_pkthdr.len);
				hdr.ilen = ~hdr.len;
				/*
				 * If upper stack computed checksum, driver
				 * should tell controller not to insert
				 * computed checksum for checksum offloading
				 * enabled controller.
				 */
				if (ifp->if_capabilities & IFCAP_TXCSUM) {
					if ((m->m_pkthdr.csum_flags &
					    AXE_CSUM_FEATURES) != 0)
						hdr.len |= FUNC6(
						    AXE_TX_CSUM_PSEUDO_HDR);
					else
						hdr.len |= FUNC6(
						    AXE_TX_CSUM_DIS);
				}
				FUNC10(pc, pos, &hdr, sizeof(hdr));
				pos += sizeof(hdr);
				FUNC12(pc, pos, m, 0, m->m_pkthdr.len);
				pos += m->m_pkthdr.len;
				if ((pos % 512) == 0) {
					hdr.len = 0;
					hdr.ilen = 0xffff;
					FUNC10(pc, pos, &hdr,
					    sizeof(hdr));
					pos += sizeof(hdr);
				}
			} else {
				FUNC12(pc, pos, m, 0, m->m_pkthdr.len);
				pos += m->m_pkthdr.len;
			}

			/*
			 * XXX
			 * Update TX packet counter here. This is not
			 * correct way but it seems that there is no way
			 * to know how many packets are sent at the end
			 * of transfer because controller combines
			 * multiple writes into single one if there is
			 * room in TX buffer of controller.
			 */
			FUNC7(ifp, IFCOUNTER_OPACKETS, 1);

			/*
			 * if there's a BPF listener, bounce a copy
			 * of this frame to him:
			 */
			FUNC1(ifp, m);

			FUNC8(m);

			/* Set frame length. */
			FUNC15(xfer, nframes, pos);
		}
		if (nframes != 0) {
			FUNC17(xfer, nframes);
			FUNC13(xfer);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		}
		return;
		/* NOTREACHED */
	default:			/* Error */
		FUNC2(11, "transfer error, %s\n",
		    FUNC11(error));

		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC18(xfer);
			goto tr_setup;
		}
		return;

	}
}