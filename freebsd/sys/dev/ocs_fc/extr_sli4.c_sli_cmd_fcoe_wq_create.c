
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_11__ {scalar_t__ dual_ulp_capable; } ;
struct TYPE_13__ {scalar_t__ port_type; TYPE_2__ config; } ;
typedef TYPE_4__ sli4_t ;
typedef int sli4_res_common_create_queue_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_10__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_14__ {scalar_t__ num_pages; int dua; int bqu; TYPE_3__* page_physical_address; void* ulp; void* cq_id; TYPE_1__ hdr; } ;
typedef TYPE_5__ sli4_req_fcoe_wq_create_t ;
struct TYPE_15__ {uintptr_t phys; int size; } ;
typedef TYPE_6__ ocs_dma_t ;
typedef int int32_t ;
struct TYPE_12__ {int high; int low; } ;


 scalar_t__ SLI4_FCOE_WQ_CREATE_V0_MAX_PAGES ;
 int SLI4_OPC_FCOE_WQ_CREATE ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_FCFCOE ;
 scalar_t__ SLI_PAGE_SIZE ;
 int max (int,int) ;
 int ocs_addr32_hi (uintptr_t) ;
 int ocs_addr32_lo (uintptr_t) ;
 int sli_cmd_sli_config (TYPE_4__*,void*,size_t,int,int *) ;
 scalar_t__ sli_page_count (int ,scalar_t__) ;

int32_t
sli_cmd_fcoe_wq_create(sli4_t *sli4, void *buf, size_t size,
         ocs_dma_t *qmem, uint16_t cq_id, uint16_t ulp)
{
 sli4_req_fcoe_wq_create_t *wq = ((void*)0);
 uint32_t sli_config_off = 0;
 uint32_t p;
 uintptr_t addr;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  uint32_t payload_size;


  payload_size = max(sizeof(sli4_req_fcoe_wq_create_t),
    sizeof(sli4_res_common_create_queue_t));

  sli_config_off = sli_cmd_sli_config(sli4, buf, size, payload_size,
    ((void*)0));
 }
 wq = (sli4_req_fcoe_wq_create_t *)((uint8_t *)buf + sli_config_off);

 wq->hdr.opcode = SLI4_OPC_FCOE_WQ_CREATE;
 wq->hdr.subsystem = SLI4_SUBSYSTEM_FCFCOE;
 wq->hdr.request_length = sizeof(sli4_req_fcoe_wq_create_t) -
     sizeof(sli4_req_hdr_t);

 wq->num_pages = sli_page_count(qmem->size, SLI_PAGE_SIZE);
 if (!wq->num_pages || (wq->num_pages > SLI4_FCOE_WQ_CREATE_V0_MAX_PAGES)) {
  return 0;
 }

 wq->cq_id = cq_id;

 if (sli4->config.dual_ulp_capable) {
  wq->dua = 1;
  wq->bqu = 1;
  wq->ulp = ulp;
 }

 for (p = 0, addr = qmem->phys;
   p < wq->num_pages;
   p++, addr += SLI_PAGE_SIZE) {
  wq->page_physical_address[p].low = ocs_addr32_lo(addr);
  wq->page_physical_address[p].high = ocs_addr32_hi(addr);
 }

 return(sli_config_off + sizeof(sli4_req_fcoe_wq_create_t));
}
