#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_13__ {int iu_type; } ;
struct pqi_io_response {size_t request_id; TYPE_1__ header; int /*<<< orphan*/  error_index; } ;
struct TYPE_14__ {size_t tag; int req_pending; int /*<<< orphan*/  status; int /*<<< orphan*/  (* error_cmp_callback ) (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* success_cmp_callback ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef  TYPE_2__ rcb_t ;
struct TYPE_15__ {TYPE_2__* rcb; TYPE_4__* op_ob_q; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
struct TYPE_16__ {size_t ci_local; size_t* pi_virt_addr; size_t elem_size; size_t num_elem; int /*<<< orphan*/  ci_register_offset; int /*<<< orphan*/  ci_register_abs; scalar_t__ array_virt_addr; int /*<<< orphan*/  q_id; } ;
typedef  TYPE_4__ ob_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
#define  PQI_RESPONSE_IU_AIO_PATH_IO_ERROR 133 
#define  PQI_RESPONSE_IU_AIO_PATH_IO_SUCCESS 132 
#define  PQI_RESPONSE_IU_GENERAL_MANAGEMENT 131 
#define  PQI_RESPONSE_IU_RAID_PATH_IO_ERROR 130 
#define  PQI_RESPONSE_IU_RAID_PATH_IO_SUCCESS 129 
#define  PQI_RESPONSE_IU_TASK_MANAGEMENT 128 
 int /*<<< orphan*/  num_intrs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void 
FUNC10(pqisrc_softstate_t *softs, int oq_id)
{
	ob_queue_t *ob_q;
	struct pqi_io_response *response;
	uint32_t oq_pi, oq_ci;

	FUNC2("IN");

	FUNC5(softs, num_intrs);
	
	ob_q = &softs->op_ob_q[oq_id - 1]; /* zero for event Q */
	oq_ci = ob_q->ci_local;
	oq_pi = *(ob_q->pi_virt_addr);

	FUNC3("ci : %d pi : %d qid : %d\n", oq_ci, oq_pi, ob_q->q_id);

	while (1) {
		rcb_t *rcb = NULL;
		uint32_t tag = 0;
		uint32_t offset;

		if (oq_pi == oq_ci)
			break;
		/* Get the response */
		offset = oq_ci * ob_q->elem_size;
		response = (struct pqi_io_response *)(ob_q->array_virt_addr + 
							offset);
		tag = response->request_id;
		rcb = &softs->rcb[tag];
		/* Make sure we are processing a valid response. */ 
		FUNC0(rcb->tag == tag && rcb->req_pending);
		rcb->req_pending = false;

		FUNC3("response.header.iu_type : %x \n", response->header.iu_type);

		switch (response->header.iu_type) {
		case PQI_RESPONSE_IU_RAID_PATH_IO_SUCCESS:
		case PQI_RESPONSE_IU_AIO_PATH_IO_SUCCESS:
			rcb->success_cmp_callback(softs, rcb);
			break;
		case PQI_RESPONSE_IU_RAID_PATH_IO_ERROR:
		case PQI_RESPONSE_IU_AIO_PATH_IO_ERROR:
			rcb->error_cmp_callback(softs, rcb, FUNC4(response->error_index));
			break;
		case PQI_RESPONSE_IU_GENERAL_MANAGEMENT:
			rcb->req_pending = false;
			break;
		case PQI_RESPONSE_IU_TASK_MANAGEMENT:
			rcb->status = FUNC7(softs, (void *)response);
			break;

		default:
			FUNC1("Invalid Response IU 0x%x\n",response->header.iu_type);
			break;
		}

		oq_ci = (oq_ci + 1) % ob_q->num_elem;
	}

	ob_q->ci_local = oq_ci;
	FUNC6(softs, ob_q->ci_register_abs, 
        ob_q->ci_register_offset, ob_q->ci_local );
	FUNC2("OUT");
}