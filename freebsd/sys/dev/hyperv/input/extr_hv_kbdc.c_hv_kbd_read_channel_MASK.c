#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct vmbus_chanpkt_hdr {int cph_type; } ;
struct vmbus_channel {int dummy; } ;
struct TYPE_4__ {scalar_t__ buflen; int /*<<< orphan*/  dev; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int EAGAIN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
#define  VMBUS_CHANPKT_TYPE_COMP 130 
#define  VMBUS_CHANPKT_TYPE_INBAND 129 
#define  VMBUS_CHANPKT_TYPE_RXBUF 128 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct vmbus_chanpkt_hdr*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct vmbus_channel*,struct vmbus_chanpkt_hdr*,scalar_t__*) ; 

void 
FUNC8(struct vmbus_channel *channel, void *context)
{
	uint8_t *buf;
	uint32_t buflen = 0;
	int ret = 0;

	hv_kbd_sc *sc = (hv_kbd_sc*)context;
	buf = sc->buf;
	buflen = sc->buflen;
	for (;;) {
		struct vmbus_chanpkt_hdr *pkt = (struct vmbus_chanpkt_hdr *)buf;
		uint32_t rxed = buflen;

		ret = FUNC7(channel, pkt, &rxed);
		if (FUNC2(ret == ENOBUFS)) {
			buflen = sc->buflen * 2;
			while (buflen < rxed)
				buflen *= 2;
			buf = FUNC6(buflen, M_DEVBUF, M_WAITOK | M_ZERO);
			FUNC3(sc->dev, "expand recvbuf %d -> %d\n",
			    sc->buflen, buflen);
			FUNC4(sc->buf, M_DEVBUF);
			sc->buf = buf;
			sc->buflen = buflen;
			continue;
		} else if (FUNC2(ret == EAGAIN)) {
			/* No more channel packets; done! */
			break;
		}
		FUNC1(!ret, ("vmbus_chan_recv_pkt failed: %d", ret));

		FUNC0(sc, "event: 0x%x\n", pkt->cph_type);
		switch (pkt->cph_type) {
		case VMBUS_CHANPKT_TYPE_COMP:
		case VMBUS_CHANPKT_TYPE_RXBUF:
			FUNC3(sc->dev, "unhandled event: %d\n",
			    pkt->cph_type);
			break;
		case VMBUS_CHANPKT_TYPE_INBAND:
			FUNC5(sc, pkt);
			break;
		default:
			FUNC3(sc->dev, "unknown event: %d\n",
			    pkt->cph_type);
			break;
		}
	}
}