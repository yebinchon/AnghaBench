#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pqi_event {int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_11__ {TYPE_4__* op_raid_ib_q; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_10__ {scalar_t__ iu_length; int /*<<< orphan*/  iu_type; } ;
struct TYPE_12__ {int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; TYPE_1__ header; } ;
typedef  TYPE_3__ pqi_event_acknowledge_request_t ;
struct TYPE_13__ {scalar_t__ pi_local; scalar_t__* ci_virt_addr; } ;
typedef  TYPE_4__ ib_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PQISRC_EVENT_ACK_RESP_TIMEOUT ; 
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static void 
FUNC5(pqisrc_softstate_t *softs, 
	struct pqi_event *event)
{
 
	pqi_event_acknowledge_request_t request;
	ib_queue_t *ib_q = &softs->op_raid_ib_q[0];
	int tmo = PQISRC_EVENT_ACK_RESP_TIMEOUT;
	FUNC3(&request,0,sizeof(request));

	FUNC2("IN\n");

	request.header.iu_type = PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT;
	request.header.iu_length = (sizeof(pqi_event_acknowledge_request_t) - 
								PQI_REQUEST_HEADER_LENGTH);
	request.event_type = event->event_type;
	request.event_id   = event->event_id;
	request.additional_event_id = event->additional_event_id;

	/* Submit Event Acknowledge */

	FUNC4(softs, ib_q, &request);

	/*
	 * We have to special-case this type of request because the firmware
	 * does not generate an interrupt when this type of request completes.
	 * Therefore, we have to poll until we see that the firmware has
	 * consumed the request before we move on.
	 */

	FUNC0(((ib_q->pi_local) == *(ib_q->ci_virt_addr)), tmo);
		if (tmo <= 0) {
			FUNC1("wait for event acknowledge timed out\n");
			FUNC1("tmo : %d\n",tmo);	
 		}		
	
	FUNC2(" OUT\n");
}