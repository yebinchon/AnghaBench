
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct dma_mem {int dummy; } ;
typedef int request ;
struct TYPE_20__ {int num_event_descriptors; TYPE_2__* descriptors; } ;
struct TYPE_22__ {TYPE_3__ event_config; } ;
typedef TYPE_5__ pqisrc_softstate_t ;
struct TYPE_23__ {TYPE_4__* descriptors; int num_event_descriptors; } ;
typedef TYPE_6__ pqi_event_config_t ;
struct TYPE_18__ {int iu_type; } ;
struct TYPE_24__ {char* tag; int size; scalar_t__ virt_addr; TYPE_1__ header; scalar_t__ dma_addr; int align; } ;
typedef TYPE_7__ pqi_event_config_request_t ;
typedef TYPE_7__ dma_mem_t ;
struct TYPE_21__ {int event_type; } ;
struct TYPE_19__ {int event_type; } ;


 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int DBG_INFO (char*,void*) ;
 int MIN (int ,int ) ;
 int PQISRC_DEFAULT_DMA_ALIGN ;
 int PQI_MAX_EVENT_DESCRIPTORS ;
 int PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG ;
 int PQI_STATUS_FAILURE ;
 int memset (TYPE_7__*,int ,int) ;
 int os_dma_mem_alloc (TYPE_5__*,TYPE_7__*) ;
 int os_dma_mem_free (TYPE_5__*,TYPE_7__*) ;
 int pqi_event_configure (TYPE_5__*,TYPE_7__*,TYPE_7__*) ;

int pqisrc_report_event_config(pqisrc_softstate_t *softs)
{

 int ret,i ;
 pqi_event_config_request_t request;
 pqi_event_config_t *event_config_p ;
 dma_mem_t buf_report_event ;

 uint32_t alloc_size = sizeof(pqi_event_config_t) ;
 memset(&request, 0 , sizeof(request));

 DBG_FUNC(" IN\n");

 memset(&buf_report_event, 0, sizeof(struct dma_mem));
 buf_report_event.tag = "pqi_report_event_buf" ;
 buf_report_event.size = alloc_size;
 buf_report_event.align = PQISRC_DEFAULT_DMA_ALIGN;


 ret = os_dma_mem_alloc(softs, &buf_report_event);
 if (ret) {
  DBG_ERR("Failed to Allocate report event config buffer : %d\n", ret);
  goto err_out;
 }
 DBG_INFO("buf_report_event.dma_addr	= %p \n",(void*)buf_report_event.dma_addr);
 DBG_INFO("buf_report_event.virt_addr 	= %p \n",(void*)buf_report_event.virt_addr);

 request.header.iu_type = PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG;


 ret=pqi_event_configure(softs,&request,&buf_report_event);
 if(ret)
  goto free_mem;


 event_config_p = (pqi_event_config_t*)buf_report_event.virt_addr;
 softs->event_config.num_event_descriptors = MIN(event_config_p->num_event_descriptors,
                                              PQI_MAX_EVENT_DESCRIPTORS) ;

        for (i=0; i < softs->event_config.num_event_descriptors ;i++){
  softs->event_config.descriptors[i].event_type =
     event_config_p->descriptors[i].event_type;
 }

 os_dma_mem_free(softs, &buf_report_event);

 DBG_FUNC(" OUT\n");
 return ret;

free_mem:
 os_dma_mem_free(softs, &buf_report_event);
err_out:
 DBG_FUNC("Failed OUT\n");
 return PQI_STATUS_FAILURE;
}
