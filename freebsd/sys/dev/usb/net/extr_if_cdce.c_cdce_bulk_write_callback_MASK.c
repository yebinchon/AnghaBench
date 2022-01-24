#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct mbuf {int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_data; TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ue_udev; } ;
struct cdce_softc {int sc_flags; TYPE_2__ sc_ue; struct mbuf** sc_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int CDCE_FLAG_ZAURUS ; 
 size_t CDCE_FRAMES_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct mbuf**,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int,void*) ; 
 struct mbuf* FUNC9 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 struct ifnet* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*) ; 
 struct cdce_softc* FUNC18 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct cdce_softc *sc = FUNC18(xfer);
	struct ifnet *ifp = FUNC11(&sc->sc_ue);
	struct mbuf *m;
	struct mbuf *mt;
	uint32_t crc;
	uint8_t x;
	int actlen, aframes;

	FUNC19(xfer, &actlen, NULL, &aframes, NULL);

	FUNC1(1, "\n");

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(11, "transfer complete: %u bytes in %u frames\n",
		    actlen, aframes);

		FUNC7(ifp, IFCOUNTER_OPACKETS, 1);

		/* free all previous TX buffers */
		FUNC4(sc->sc_tx_buf, CDCE_FRAMES_MAX);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		for (x = 0; x != CDCE_FRAMES_MAX; x++) {

			FUNC2(&ifp->if_snd, m);

			if (m == NULL)
				break;

			if (sc->sc_flags & CDCE_FLAG_ZAURUS) {
				/*
				 * Zaurus wants a 32-bit CRC appended
				 * to every frame
				 */

				crc = FUNC5(m, 0, m->m_pkthdr.len);
				crc = FUNC6(crc);

				if (!FUNC8(m, 4, (void *)&crc)) {
					FUNC10(m);
					FUNC7(ifp, IFCOUNTER_OERRORS, 1);
					continue;
				}
			}
			if (m->m_len != m->m_pkthdr.len) {
				mt = FUNC9(m, M_NOWAIT);
				if (mt == NULL) {
					FUNC10(m);
					FUNC7(ifp, IFCOUNTER_OERRORS, 1);
					continue;
				}
				m = mt;
			}
			if (m->m_pkthdr.len > MCLBYTES) {
				m->m_pkthdr.len = MCLBYTES;
			}
			sc->sc_tx_buf[x] = m;
			FUNC15(xfer, x, m->m_data, m->m_len);

			/*
			 * If there's a BPF listener, bounce a copy of
			 * this frame to him:
			 */
			FUNC0(ifp, m);
		}
		if (x != 0) {
			FUNC16(xfer, x);

			FUNC14(xfer);
		}
		break;

	default:			/* Error */
		FUNC1(11, "transfer error, %s\n",
		    FUNC12(error));

		/* free all previous TX buffers */
		FUNC4(sc->sc_tx_buf, CDCE_FRAMES_MAX);

		/* count output errors */
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);

		if (error != USB_ERR_CANCELLED) {
			if (FUNC13(sc->sc_ue.ue_udev) == USB_MODE_HOST) {
				/* try to clear stall first */
				FUNC17(xfer);
			}
			goto tr_setup;
		}
		break;
	}
}