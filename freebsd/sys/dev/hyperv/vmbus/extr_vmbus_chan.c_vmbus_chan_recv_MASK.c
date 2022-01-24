#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vmbus_chanpkt_hdr {scalar_t__ cph_hlen; scalar_t__ cph_tlen; int /*<<< orphan*/  cph_xactid; } ;
struct vmbus_channel {int /*<<< orphan*/  ch_rxbr; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ VMBUS_CHANPKT_HLEN_MIN ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel*,char*,scalar_t__,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct vmbus_chanpkt_hdr*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int,int) ; 

int
FUNC6(struct vmbus_channel *chan, void *data, int *dlen0,
    uint64_t *xactid)
{
	struct vmbus_chanpkt_hdr pkt;
	int error, dlen, hlen;

	error = FUNC4(&chan->ch_rxbr, &pkt, sizeof(pkt));
	if (error)
		return (error);

	if (FUNC2(pkt.cph_hlen < VMBUS_CHANPKT_HLEN_MIN)) {
		FUNC3(chan, "invalid hlen %u\n", pkt.cph_hlen);
		/* XXX this channel is dead actually. */
		return (EIO);
	}
	if (FUNC2(pkt.cph_hlen > pkt.cph_tlen)) {
		FUNC3(chan, "invalid hlen %u and tlen %u\n",
		    pkt.cph_hlen, pkt.cph_tlen);
		/* XXX this channel is dead actually. */
		return (EIO);
	}

	hlen = FUNC1(pkt.cph_hlen);
	dlen = FUNC1(pkt.cph_tlen) - hlen;

	if (*dlen0 < dlen) {
		/* Return the size of this packet's data. */
		*dlen0 = dlen;
		return (ENOBUFS);
	}

	*xactid = pkt.cph_xactid;
	*dlen0 = dlen;

	/* Skip packet header */
	error = FUNC5(&chan->ch_rxbr, data, dlen, hlen);
	FUNC0(!error, ("vmbus_rxbr_read failed"));

	return (0);
}