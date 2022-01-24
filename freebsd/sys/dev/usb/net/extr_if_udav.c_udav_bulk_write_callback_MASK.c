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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct udav_softc {int sc_flags; int /*<<< orphan*/  sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int MCLBYTES ; 
 int UDAV_FLAG_LINK ; 
 int UDAV_MIN_FRAME_LEN ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC12 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 struct udav_softc* FUNC15 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct udav_softc *sc = FUNC15(xfer);
	struct ifnet *ifp = FUNC6(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	int extra_len;
	int temp_len;
	uint8_t buf[2];

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(11, "transfer complete\n");
		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_flags & UDAV_FLAG_LINK) == 0) {
			/*
			 * don't send anything if there is no link !
			 */
			return;
		}
		FUNC2(&ifp->if_snd, m);

		if (m == NULL)
			return;
		if (m->m_pkthdr.len > MCLBYTES)
			m->m_pkthdr.len = MCLBYTES;
		if (m->m_pkthdr.len < UDAV_MIN_FRAME_LEN) {
			extra_len = UDAV_MIN_FRAME_LEN - m->m_pkthdr.len;
		} else {
			extra_len = 0;
		}

		temp_len = (m->m_pkthdr.len + extra_len);

		/*
		 * the frame length is specified in the first 2 bytes of the
		 * buffer
		 */
		buf[0] = (uint8_t)(temp_len);
		buf[1] = (uint8_t)(temp_len >> 8);

		temp_len += 2;

		pc = FUNC12(xfer, 0);
		FUNC7(pc, 0, buf, 2);
		FUNC10(pc, 2, m, 0, m->m_pkthdr.len);

		if (extra_len)
			FUNC9(pc, temp_len - extra_len, extra_len);
		/*
		 * if there's a BPF listener, bounce a copy
		 * of this frame to him:
		 */
		FUNC0(ifp, m);

		FUNC5(m);

		FUNC13(xfer, 0, temp_len);
		FUNC11(xfer);
		return;

	default:			/* Error */
		FUNC1(11, "transfer error, %s\n",
		    FUNC8(error));

		FUNC4(ifp, IFCOUNTER_OERRORS, 1);

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC14(xfer);
			goto tr_setup;
		}
		return;
	}
}