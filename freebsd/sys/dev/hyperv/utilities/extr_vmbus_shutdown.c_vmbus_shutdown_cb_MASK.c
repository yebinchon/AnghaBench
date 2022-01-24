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
struct vmbus_icmsg_shutdown {int ic_haltflags; } ;
struct vmbus_icmsg_hdr {int ic_type; int /*<<< orphan*/  ic_status; } ;
struct vmbus_ic_softc {int ic_buflen; int /*<<< orphan*/  ic_dev; void* ic_buf; } ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  RB_POWEROFF ; 
 int VMBUS_ICMSG_SHUTDOWN_SIZE_MIN ; 
 int /*<<< orphan*/  VMBUS_ICMSG_STATUS_FAIL ; 
 int /*<<< orphan*/  VMBUS_ICMSG_STATUS_OK ; 
#define  VMBUS_ICMSG_TYPE_NEGOTIATE 129 
#define  VMBUS_ICMSG_TYPE_SHUTDOWN 128 
 int /*<<< orphan*/  VMBUS_SHUTDOWN_FWVER ; 
 int /*<<< orphan*/  VMBUS_SHUTDOWN_MSGVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vmbus_channel*,void*,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vmbus_ic_softc*,void*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_ic_softc*,struct vmbus_channel*,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct vmbus_channel *chan, void *xsc)
{
	struct vmbus_ic_softc *sc = xsc;
	struct vmbus_icmsg_hdr *hdr;
	struct vmbus_icmsg_shutdown *msg;
	int dlen, error, do_shutdown = 0;
	uint64_t xactid;
	void *data;

	/*
	 * Receive request.
	 */
	data = sc->ic_buf;
	dlen = sc->ic_buflen;
	error = FUNC3(chan, data, &dlen, &xactid);
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
		error = FUNC4(sc, data, &dlen,
		    VMBUS_SHUTDOWN_FWVER, VMBUS_SHUTDOWN_MSGVER);
		if (error)
			return;
		break;

	case VMBUS_ICMSG_TYPE_SHUTDOWN:
		if (dlen < VMBUS_ICMSG_SHUTDOWN_SIZE_MIN) {
			FUNC1(sc->ic_dev, "invalid shutdown len %d\n",
			    dlen);
			return;
		}
		msg = data;

		/* XXX ic_flags definition? */
		if (msg->ic_haltflags == 0 || msg->ic_haltflags == 1) {
			FUNC1(sc->ic_dev, "shutdown requested\n");
			hdr->ic_status = VMBUS_ICMSG_STATUS_OK;
			do_shutdown = 1;
		} else {
			FUNC1(sc->ic_dev, "unknown shutdown flags "
			    "0x%08x\n", msg->ic_haltflags);
			hdr->ic_status = VMBUS_ICMSG_STATUS_FAIL;
		}
		break;

	default:
		FUNC1(sc->ic_dev, "got 0x%08x icmsg\n", hdr->ic_type);
		break;
	}

	/*
	 * Send response by echoing the request back.
	 */
	FUNC5(sc, chan, data, dlen, xactid);

	if (do_shutdown)
		FUNC2(RB_POWEROFF);
}