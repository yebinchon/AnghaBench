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
struct vmbus_icmsg_timesync4 {int /*<<< orphan*/  ic_tsflags; int /*<<< orphan*/  ic_sent_tc; int /*<<< orphan*/  ic_hvtime; } ;
struct vmbus_icmsg_timesync {int /*<<< orphan*/  ic_tsflags; int /*<<< orphan*/  ic_hvtime; } ;
struct vmbus_icmsg_hdr {int ic_type; } ;
struct vmbus_ic_softc {int ic_buflen; int /*<<< orphan*/  ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  VMBUS_ICMSG_TYPE_NEGOTIATE 129 
#define  VMBUS_ICMSG_TYPE_TIMESYNC 128 
 int /*<<< orphan*/  FUNC1 (struct vmbus_ic_softc*) ; 
 int /*<<< orphan*/  VMBUS_TIMESYNC_FWVER ; 
 int /*<<< orphan*/  VMBUS_TIMESYNC_MSGVER ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_ic_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct vmbus_channel*,void*,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vmbus_ic_softc*,void*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_ic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vmbus_channel *chan, void *xsc)
{
	struct vmbus_ic_softc *sc = xsc;
	struct vmbus_icmsg_hdr *hdr;
	int dlen, error;
	uint64_t xactid;
	void *data;

	/*
	 * Receive request.
	 */
	data = sc->ic_buf;
	dlen = sc->ic_buflen;
	error = FUNC4(chan, data, &dlen, &xactid);
	FUNC0(error != ENOBUFS, ("icbuf is not large enough"));
	if (error)
		return;

	if (dlen < sizeof(*hdr)) {
		FUNC3(sc->ic_dev, "invalid data len %d\n", dlen);
		return;
	}
	hdr = data;

	/*
	 * Update request, which will be echoed back as response.
	 */
	switch (hdr->ic_type) {
	case VMBUS_ICMSG_TYPE_NEGOTIATE:
		error = FUNC5(sc, data, &dlen,
		    VMBUS_TIMESYNC_FWVER, VMBUS_TIMESYNC_MSGVER);
		if (error)
			return;
		if (FUNC1(sc))
			FUNC3(sc->ic_dev, "RTT\n");
		break;

	case VMBUS_ICMSG_TYPE_TIMESYNC:
		if (FUNC2(sc)) {
			const struct vmbus_icmsg_timesync4 *msg4;

			if (dlen < sizeof(*msg4)) {
				FUNC3(sc->ic_dev, "invalid timesync4 "
				    "len %d\n", dlen);
				return;
			}
			msg4 = data;
			FUNC7(sc, msg4->ic_hvtime, msg4->ic_sent_tc,
			    msg4->ic_tsflags);
		} else {
			const struct vmbus_icmsg_timesync *msg;

			if (dlen < sizeof(*msg)) {
				FUNC3(sc->ic_dev, "invalid timesync "
				    "len %d\n", dlen);
				return;
			}
			msg = data;
			FUNC7(sc, msg->ic_hvtime, 0, msg->ic_tsflags);
		}
		break;

	default:
		FUNC3(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
		break;
	}

	/*
	 * Send response by echoing the request back.
	 */
	FUNC6(sc, chan, data, dlen, xactid);
}