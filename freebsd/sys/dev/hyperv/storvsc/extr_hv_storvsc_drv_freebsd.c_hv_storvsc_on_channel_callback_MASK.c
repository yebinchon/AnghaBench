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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vstor_packet {int operation; } ;
struct vmbus_channel {int dummy; } ;
struct hv_storvsc_request {int /*<<< orphan*/  synch_sema; int /*<<< orphan*/  vstor_packet; } ;
struct storvsc_softc {struct hv_storvsc_request hs_reset_req; struct hv_storvsc_request hs_init_req; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  VSTOR_OPERATION_COMPLETEIO 130 
#define  VSTOR_OPERATION_ENUMERATE_BUS 129 
#define  VSTOR_OPERATION_REMOVEDEVICE 128 
 int VSTOR_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct storvsc_softc*,struct vstor_packet*,struct hv_storvsc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct storvsc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vmbus_channel*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC9(struct vmbus_channel *channel, void *xsc)
{
	int ret = 0;
	struct storvsc_softc *sc = xsc;
	uint32_t bytes_recvd;
	uint64_t request_id;
	uint8_t packet[FUNC6(sizeof(struct vstor_packet), 8)];
	struct hv_storvsc_request *request;
	struct vstor_packet *vstor_packet;

	bytes_recvd = FUNC6(VSTOR_PKT_SIZE, 8);
	ret = FUNC8(channel, packet, &bytes_recvd, &request_id);
	FUNC0(ret != ENOBUFS, ("storvsc recvbuf is not large enough"));
	/* XXX check bytes_recvd to make sure that it contains enough data */

	while ((ret == 0) && (bytes_recvd > 0)) {
		request = (struct hv_storvsc_request *)(uintptr_t)request_id;

		if ((request == &sc->hs_init_req) ||
			(request == &sc->hs_reset_req)) {
			FUNC3(&request->vstor_packet, packet,
				   sizeof(struct vstor_packet));
			FUNC7(&request->synch_sema);
		} else {
			vstor_packet = (struct vstor_packet *)packet;
			switch(vstor_packet->operation) {
			case VSTOR_OPERATION_COMPLETEIO:
				if (request == NULL)
					FUNC4("VMBUS: storvsc received a "
					    "packet with NULL request id in "
					    "COMPLETEIO operation.");

				FUNC1(sc,
							vstor_packet, request);
				break;
			case VSTOR_OPERATION_REMOVEDEVICE:
				FUNC5("VMBUS: storvsc operation %d not "
				    "implemented.\n", vstor_packet->operation);
				/* TODO: implement */
				break;
			case VSTOR_OPERATION_ENUMERATE_BUS:
				FUNC2(sc);
				break;
			default:
				break;
			}			
		}

		bytes_recvd = FUNC6(VSTOR_PKT_SIZE, 8),
		ret = FUNC8(channel, packet, &bytes_recvd,
		    &request_id);
		FUNC0(ret != ENOBUFS,
		    ("storvsc recvbuf is not large enough"));
		/*
		 * XXX check bytes_recvd to make sure that it contains
		 * enough data
		 */
	}
}