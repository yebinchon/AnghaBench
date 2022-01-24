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
struct vmbus_icmsg_heartbeat {int /*<<< orphan*/  ic_seq; } ;
struct vmbus_icmsg_hdr {int ic_type; } ;
struct vmbus_ic_softc {int ic_buflen; int /*<<< orphan*/  ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  VMBUS_HEARTBEAT_FWVER ; 
 int /*<<< orphan*/  VMBUS_HEARTBEAT_MSGVER ; 
 int VMBUS_ICMSG_HEARTBEAT_SIZE_MIN ; 
#define  VMBUS_ICMSG_TYPE_HEARTBEAT 129 
#define  VMBUS_ICMSG_TYPE_NEGOTIATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct vmbus_channel*,void*,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vmbus_ic_softc*,void*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vmbus_channel *chan, void *xsc)
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
	error = FUNC2(chan, data, &dlen, &xactid);
	FUNC0(error != ENOBUFS, ("icbuf is not large enough"));
	if (error)
		return;

	if (dlen < sizeof(*hdr)) {
		FUNC1(sc->ic_dev, "invalid data len %d\n", dlen);
		return;
	}
	hdr = data;

	/*
	 * Update request, which will be echoed back as response.
	 */
	switch (hdr->ic_type) {
	case VMBUS_ICMSG_TYPE_NEGOTIATE:
		error = FUNC3(sc, data, &dlen,
		    VMBUS_HEARTBEAT_FWVER, VMBUS_HEARTBEAT_MSGVER);
		if (error)
			return;
		break;

	case VMBUS_ICMSG_TYPE_HEARTBEAT:
		/* Only ic_seq is a must */
		if (dlen < VMBUS_ICMSG_HEARTBEAT_SIZE_MIN) {
			FUNC1(sc->ic_dev, "invalid heartbeat len %d\n",
			    dlen);
			return;
		}
		((struct vmbus_icmsg_heartbeat *)data)->ic_seq++;
		break;

	default:
		FUNC1(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
		break;
	}

	/*
	 * Send response by echoing the request back.
	 */
	FUNC4(sc, chan, data, dlen, xactid);
}