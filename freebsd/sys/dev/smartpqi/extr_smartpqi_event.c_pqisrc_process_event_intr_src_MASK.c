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
typedef  int uint32_t ;
struct pqi_event {int pending; int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; } ;
struct TYPE_13__ {int ci_local; int* pi_virt_addr; int elem_size; int num_elem; int /*<<< orphan*/  ci_register_offset; int /*<<< orphan*/  ci_register_abs; scalar_t__ array_virt_addr; } ;
struct TYPE_11__ {struct pqi_event* pending_events; TYPE_4__ event_q; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_10__ {int /*<<< orphan*/  iu_type; } ;
struct TYPE_12__ {int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; scalar_t__ request_acknowledge; TYPE_1__ header; } ;
typedef  TYPE_3__ pqi_event_response_t ;
typedef  TYPE_4__ ob_queue_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  num_intrs ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int 
FUNC7(pqisrc_softstate_t *softs,int obq_id)
{
	uint32_t obq_pi,obq_ci;
	pqi_event_response_t response;
	ob_queue_t *event_q;
	struct pqi_event *pending_event;
	boolean_t  need_delayed_work = false;
	
	FUNC0(" IN\n");
	
	FUNC2(softs, num_intrs);
	
	event_q = &softs->event_q;
	obq_ci = event_q->ci_local;
	obq_pi = *(event_q->pi_virt_addr);
	FUNC1("Initial Event_q ci : %d Event_q pi : %d\n", obq_ci, obq_pi);
	
	while(1) {
		int event_index;
		FUNC1("queue_id : %d ci : %d pi : %d\n",obq_id, obq_ci, obq_pi);
		if (obq_pi == obq_ci)
			break;

		need_delayed_work = true;

		/* Copy the response */
		FUNC4(&response, event_q->array_virt_addr + (obq_ci * event_q->elem_size),
					sizeof(pqi_event_response_t));
		FUNC1("response.header.iu_type : 0x%x \n", response.header.iu_type);
		FUNC1("response.event_type : 0x%x \n", response.event_type);

		event_index = FUNC6(response.event_type);

		if (event_index >= 0) {
			if(response.request_acknowledge) {
				pending_event = &softs->pending_events[event_index];
				pending_event->pending = true;
				pending_event->event_type = response.event_type;
				pending_event->event_id = response.event_id;
				pending_event->additional_event_id = response.additional_event_id;
			}
		}
     	
	obq_ci = (obq_ci + 1) % event_q->num_elem;
	}
	/* Update CI */
	event_q->ci_local = obq_ci;
	FUNC3(softs, event_q->ci_register_abs,
        event_q->ci_register_offset, event_q->ci_local);

	/*Adding events to the task queue for acknowledging*/
	if (need_delayed_work == true) {
		FUNC5(softs);
	}

	FUNC0("OUT");
	return PQI_STATUS_SUCCESS;
	

}