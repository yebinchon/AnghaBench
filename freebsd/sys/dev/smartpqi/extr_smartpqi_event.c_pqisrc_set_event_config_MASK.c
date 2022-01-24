#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct dma_mem {int dummy; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_24__ {scalar_t__ q_id; } ;
struct TYPE_23__ {int num_event_descriptors; TYPE_3__* descriptors; } ;
struct TYPE_26__ {TYPE_5__ event_q; TYPE_4__ event_config; } ;
typedef  TYPE_7__ pqisrc_softstate_t ;
struct TYPE_27__ {int num_event_descriptors; TYPE_6__* descriptors; } ;
typedef  TYPE_8__ pqi_event_config_t ;
struct TYPE_21__ {scalar_t__ global_event_oq_id; } ;
struct TYPE_20__ {int /*<<< orphan*/  iu_type; } ;
struct TYPE_28__ {char* tag; int size; scalar_t__ virt_addr; TYPE_2__ iu_specific; TYPE_1__ header; scalar_t__ dma_addr; int /*<<< orphan*/  align; } ;
typedef  TYPE_9__ pqi_event_config_request_t ;
typedef  TYPE_9__ dma_mem_t ;
struct TYPE_25__ {scalar_t__ oq_id; int /*<<< orphan*/  event_type; } ;
struct TYPE_22__ {int /*<<< orphan*/  event_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  PQISRC_DEFAULT_DMA_ALIGN ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_SET_EVENT_CONFIG ; 
 int PQI_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_7__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_9__*) ; 
 int FUNC6 (TYPE_7__*,TYPE_9__*,TYPE_9__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(pqisrc_softstate_t *softs)
{

	int ret,i;
	pqi_event_config_request_t request;
	pqi_event_config_t *event_config_p;
	dma_mem_t buf_set_event;
	/*bytes to be allocaed for set event config data-out buffer */
	uint32_t alloc_size = sizeof(pqi_event_config_t);
	FUNC3(&request, 0 , sizeof(request));

	FUNC1(" IN\n");

 	FUNC3(&buf_set_event, 0, sizeof(struct dma_mem));
	buf_set_event.tag 	= "pqi_set_event_buf";
	buf_set_event.size 	= alloc_size;
	buf_set_event.align 	= PQISRC_DEFAULT_DMA_ALIGN;
	  
	/* allocate memory */
	ret = FUNC4(softs, &buf_set_event);
	if (ret) {
		FUNC0("Failed to Allocate set event config buffer : %d\n", ret);
		goto err_out;
	}
		 
	FUNC2("buf_set_event.dma_addr  	= %p\n",(void*)buf_set_event.dma_addr);
	FUNC2("buf_set_event.virt_addr 	= %p\n",(void*)buf_set_event.virt_addr);

	request.header.iu_type = PQI_REQUEST_IU_SET_EVENT_CONFIG;
	request.iu_specific.global_event_oq_id = softs->event_q.q_id; 

	/*pointer to data-out buffer*/

	event_config_p = (pqi_event_config_t *)buf_set_event.virt_addr;

	event_config_p->num_event_descriptors = softs->event_config.num_event_descriptors;

	
	for (i=0; i < softs->event_config.num_event_descriptors ; i++){
		event_config_p->descriptors[i].event_type = 
					softs->event_config.descriptors[i].event_type;
		if( FUNC7(event_config_p->descriptors[i].event_type) != -1)
			event_config_p->descriptors[i].oq_id = softs->event_q.q_id;
		else
			event_config_p->descriptors[i].oq_id = 0; /* Not supported this event. */
			

	}
        /* Event configuration */
	ret = FUNC6(softs,&request,&buf_set_event);
		if(ret)
			goto free_mem;
    
	FUNC5(softs, &buf_set_event);
	   
	FUNC1(" OUT\n");
	return ret;
	
free_mem:
	FUNC5(softs, &buf_set_event);
err_out:
	FUNC1("Failed OUT\n");
	return PQI_STATUS_FAILURE;

}