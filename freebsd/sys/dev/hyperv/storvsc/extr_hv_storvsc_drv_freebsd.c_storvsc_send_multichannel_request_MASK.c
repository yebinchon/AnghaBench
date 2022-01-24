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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int multi_channels_cnt; } ;
struct vstor_packet {scalar_t__ operation; scalar_t__ status; TYPE_1__ u; int /*<<< orphan*/  flags; } ;
struct vmbus_channel {int dummy; } ;
struct hv_storvsc_request {int /*<<< orphan*/  synch_sema; struct vstor_packet vstor_packet; } ;
struct storvsc_softc {int hs_nchan; int /*<<< orphan*/  hs_chan; struct hv_storvsc_request hs_init_req; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  REQUEST_COMPLETION_FLAG ; 
 int /*<<< orphan*/  VMBUS_CHANPKT_FLAG_RC ; 
 int /*<<< orphan*/  VMBUS_CHANPKT_TYPE_INBAND ; 
 scalar_t__ VSTOR_OPERATION_COMPLETEIO ; 
 scalar_t__ VSTOR_OPERATION_CREATE_MULTI_CHANNELS ; 
 int /*<<< orphan*/  VSTOR_PKT_SIZE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (struct hv_storvsc_request*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mp_ncpus ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct storvsc_softc*,struct vmbus_channel*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vstor_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmbus_channel** FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmbus_channel**,int) ; 

__attribute__((used)) static void
FUNC9(struct storvsc_softc *sc, int max_subch)
{
	struct vmbus_channel **subchan;
	struct hv_storvsc_request *request;
	struct vstor_packet *vstor_packet;	
	int request_subch;
	int ret, i;

	/* get sub-channel count that need to create */
	request_subch = FUNC0(max_subch, mp_ncpus - 1);

	request = &sc->hs_init_req;

	/* request the host to create multi-channel */
	FUNC1(request, 0, sizeof(struct hv_storvsc_request));
	
	FUNC3(&request->synch_sema, 0, ("stor_synch_sema"));

	vstor_packet = &request->vstor_packet;
	
	vstor_packet->operation = VSTOR_OPERATION_CREATE_MULTI_CHANNELS;
	vstor_packet->flags = REQUEST_COMPLETION_FLAG;
	vstor_packet->u.multi_channels_cnt = request_subch;

	ret = FUNC6(sc->hs_chan,
	    VMBUS_CHANPKT_TYPE_INBAND, VMBUS_CHANPKT_FLAG_RC,
	    vstor_packet, VSTOR_PKT_SIZE, (uint64_t)(uintptr_t)request);

	FUNC4(&request->synch_sema);

	if (vstor_packet->operation != VSTOR_OPERATION_COMPLETEIO ||
	    vstor_packet->status != 0) {		
		FUNC2("Storvsc_error: create multi-channel invalid operation "
		    "(%d) or statue (%u)\n",
		    vstor_packet->operation, vstor_packet->status);
		return;
	}

	/* Update channel count */
	sc->hs_nchan = request_subch + 1;

	/* Wait for sub-channels setup to complete. */
	subchan = FUNC7(sc->hs_chan, request_subch);

	/* Attach the sub-channels. */
	for (i = 0; i < request_subch; ++i)
		FUNC5(sc, subchan[i]);

	/* Release the sub-channels. */
	FUNC8(subchan, request_subch);

	if (bootverbose)
		FUNC2("Storvsc create multi-channel success!\n");
}