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
struct urndis_softc {int /*<<< orphan*/  sc_ue; } ;
struct rndis_packet_msg {void* rm_datalen; void* rm_dataoffset; void* rm_len; void* rm_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  REMOTE_NDIS_PACKET_MSG ; 
 int /*<<< orphan*/  RNDIS_DATA_OFFSET ; 
 unsigned int RNDIS_TX_FRAMES_MAX ; 
 unsigned int RNDIS_TX_MAXLEN ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC4 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct rndis_packet_msg*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int /*<<< orphan*/ ,struct rndis_packet_msg*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC14 (struct usb_xfer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*) ; 
 struct urndis_softc* FUNC19 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC21(struct usb_xfer *xfer, usb_error_t error)
{
	struct rndis_packet_msg msg;
	struct urndis_softc *sc = FUNC19(xfer);
	struct ifnet *ifp = FUNC9(&sc->sc_ue);
	struct mbuf *m;
	unsigned x;
	int actlen;
	int aframes;

	FUNC20(xfer, &actlen, NULL, &aframes, NULL);

	FUNC2(1, "\n");

	switch (FUNC4(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC2(11, "%u bytes in %u frames\n", actlen, aframes);

		FUNC6(ifp, IFCOUNTER_OPACKETS, 1);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC8(&msg, 0, sizeof(msg));

		for (x = 0; x != RNDIS_TX_FRAMES_MAX; x++) {
			struct usb_page_cache *pc = FUNC14(xfer, x);

			FUNC16(xfer, x * RNDIS_TX_MAXLEN, x);

next_pkt:
			FUNC3(&ifp->if_snd, m);

			if (m == NULL)
				break;

			if ((m->m_pkthdr.len + sizeof(msg)) > RNDIS_TX_MAXLEN) {
				FUNC1("Too big packet\n");
				FUNC6(ifp, IFCOUNTER_OERRORS, 1);

				/* Free buffer */
				FUNC7(m);
				goto next_pkt;
			}
			msg.rm_type = FUNC5(REMOTE_NDIS_PACKET_MSG);
			msg.rm_len = FUNC5(sizeof(msg) + m->m_pkthdr.len);

			msg.rm_dataoffset = FUNC5(RNDIS_DATA_OFFSET);
			msg.rm_datalen = FUNC5(m->m_pkthdr.len);

			/* copy in all data */
			FUNC10(pc, 0, &msg, sizeof(msg));
			FUNC12(pc, sizeof(msg), m, 0, m->m_pkthdr.len);
			FUNC15(xfer, x, sizeof(msg) + m->m_pkthdr.len);

			/*
			 * If there's a BPF listener, bounce a copy of
			 * this frame to him:
			 */
			FUNC0(ifp, m);

			/* Free buffer */
			FUNC7(m);
		}
		if (x != 0) {
			FUNC17(xfer, x);
			FUNC13(xfer);
		}
		break;

	default:			/* Error */
		FUNC2(11, "transfer error, %s\n", FUNC11(error));

		/* count output errors */
		FUNC6(ifp, IFCOUNTER_OERRORS, 1);

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC18(xfer);
			goto tr_setup;
		}
		break;
	}
}