#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct dma_mem {int dummy; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_20__ {int num_event_descriptors; TYPE_2__* descriptors; } ;
struct TYPE_22__ {TYPE_3__ event_config; } ;
typedef  TYPE_5__ pqisrc_softstate_t ;
struct TYPE_23__ {TYPE_4__* descriptors; int /*<<< orphan*/  num_event_descriptors; } ;
typedef  TYPE_6__ pqi_event_config_t ;
struct TYPE_18__ {int /*<<< orphan*/  iu_type; } ;
struct TYPE_24__ {char* tag; int size; scalar_t__ virt_addr; TYPE_1__ header; scalar_t__ dma_addr; int /*<<< orphan*/  align; } ;
typedef  TYPE_7__ pqi_event_config_request_t ;
typedef  TYPE_7__ dma_mem_t ;
struct TYPE_21__ {int /*<<< orphan*/  event_type; } ;
struct TYPE_19__ {int /*<<< orphan*/  event_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PQISRC_DEFAULT_DMA_ALIGN ; 
 int /*<<< orphan*/  PQI_MAX_EVENT_DESCRIPTORS ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG ; 
 int PQI_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC7 (TYPE_5__*,TYPE_7__*,TYPE_7__*) ; 

int FUNC8(pqisrc_softstate_t *softs)
{

	int ret,i ;
	pqi_event_config_request_t request; 
	pqi_event_config_t  *event_config_p ;
	dma_mem_t  buf_report_event ;
	/*bytes to be allocaed for report event config data-in buffer */
	uint32_t alloc_size = sizeof(pqi_event_config_t) ;
	FUNC4(&request, 0 , sizeof(request));
 
	FUNC1(" IN\n");
	
	FUNC4(&buf_report_event, 0, sizeof(struct dma_mem)); 
	buf_report_event.tag 	= "pqi_report_event_buf" ;
	buf_report_event.size 	= alloc_size;
	buf_report_event.align 	= PQISRC_DEFAULT_DMA_ALIGN;
 
	/* allocate memory */
	ret = FUNC5(softs, &buf_report_event);
	if (ret) {
		FUNC0("Failed to Allocate report event config buffer : %d\n", ret);
		goto err_out;
	}
	FUNC2("buf_report_event.dma_addr	= %p \n",(void*)buf_report_event.dma_addr);
	FUNC2("buf_report_event.virt_addr 	= %p \n",(void*)buf_report_event.virt_addr);
  
	request.header.iu_type = PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG;
	
	/* Event configuration */
	ret=FUNC7(softs,&request,&buf_report_event);
	if(ret)
		goto free_mem;
    
	
	event_config_p = (pqi_event_config_t*)buf_report_event.virt_addr;
	softs->event_config.num_event_descriptors = FUNC3(event_config_p->num_event_descriptors,
		                                            PQI_MAX_EVENT_DESCRIPTORS) ;
							    
        for (i=0; i < softs->event_config.num_event_descriptors ;i++){
		softs->event_config.descriptors[i].event_type = 
					event_config_p->descriptors[i].event_type;
	}
        /* free the allocated memory*/
	FUNC6(softs, &buf_report_event);
	   
	FUNC1(" OUT\n");
	return ret;

free_mem:
	FUNC6(softs, &buf_report_event);
err_out:
	FUNC1("Failed OUT\n");
	return PQI_STATUS_FAILURE;
}