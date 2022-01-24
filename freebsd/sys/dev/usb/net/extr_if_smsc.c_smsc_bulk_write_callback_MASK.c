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
typedef  int /*<<< orphan*/  txhdr ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct smsc_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
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
 int SMSC_FLAG_LINK ; 
 int FUNC3 (int) ; 
 int SMSC_TX_CTRL_0_FIRST_SEG ; 
 int SMSC_TX_CTRL_0_LAST_SEG ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC5 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc_softc*,char*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_page_cache*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC15 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_xfer*) ; 
 struct smsc_softc* FUNC20 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC21(struct usb_xfer *xfer, usb_error_t error)
{
	struct smsc_softc *sc = FUNC20(xfer);
	struct ifnet *ifp = FUNC10(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	uint32_t txhdr;
	uint32_t frm_len = 0;
	int nframes;

	switch (FUNC5(xfer)) {
	case USB_ST_TRANSFERRED:
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		/* FALLTHROUGH */

	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_flags & SMSC_FLAG_LINK) == 0 ||
			(ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
			/* Don't send anything if there is no link or controller is busy. */
			return;
		}

		for (nframes = 0; nframes < 16 &&
		    !FUNC2(&ifp->if_snd); nframes++) {
			FUNC1(&ifp->if_snd, m);
			if (m == NULL)
				break;
			FUNC17(xfer, nframes * MCLBYTES,
			    nframes);
			frm_len = 0;
			pc = FUNC15(xfer, nframes);

			/* Each frame is prefixed with two 32-bit values describing the
			 * length of the packet and buffer.
			 */
			txhdr = FUNC3(m->m_pkthdr.len) | 
					SMSC_TX_CTRL_0_FIRST_SEG | SMSC_TX_CTRL_0_LAST_SEG;
			txhdr = FUNC6(txhdr);
			FUNC11(pc, 0, &txhdr, sizeof(txhdr));
			
			txhdr = FUNC4(m->m_pkthdr.len);
			txhdr = FUNC6(txhdr);
			FUNC11(pc, 4, &txhdr, sizeof(txhdr));
			
			frm_len += 8;

			/* Next copy in the actual packet */
			FUNC13(pc, frm_len, m, 0, m->m_pkthdr.len);
			frm_len += m->m_pkthdr.len;

			FUNC7(ifp, IFCOUNTER_OPACKETS, 1);

			/* If there's a BPF listener, bounce a copy of this frame to him */
			FUNC0(ifp, m);

			FUNC8(m);

			/* Set frame length. */
			FUNC16(xfer, nframes, frm_len);
		}
		if (nframes != 0) {
			FUNC18(xfer, nframes);
			FUNC14(xfer);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		}
		return;

	default:
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		
		if (error != USB_ERR_CANCELLED) {
			FUNC9(sc, "usb error on tx: %s\n", FUNC12(error));
			FUNC19(xfer);
			goto tr_setup;
		}
		return;
	}
}