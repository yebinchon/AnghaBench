
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {scalar_t__ port_type; int os; } ;
typedef TYPE_3__ sli4_t ;
typedef int sli4_res_common_create_queue_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_9__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_12__ {uintptr_t num_pages; int delay_multiplier; TYPE_2__* page_address; int arm; int valid; int count; void* eqesz; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_req_common_create_eq_t ;
struct TYPE_13__ {uintptr_t size; uintptr_t phys; } ;
typedef TYPE_5__ ocs_dma_t ;
typedef int int32_t ;
struct TYPE_10__ {int high; int low; } ;


 int FALSE ;
 void* SLI4_EQE_SIZE_4 ;
 int SLI4_EQ_CNT_1024 ;
 int SLI4_EQ_CNT_2048 ;
 int SLI4_EQ_CNT_4096 ;
 int SLI4_OPC_COMMON_CREATE_EQ ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 uintptr_t SLI_PAGE_SIZE ;
 int TRUE ;
 int max (int,int) ;
 int ocs_addr32_hi (uintptr_t) ;
 int ocs_addr32_lo (uintptr_t) ;
 int ocs_log_test (int ,char*,int) ;
 int sli_cmd_sli_config (TYPE_3__*,void*,size_t,int,int *) ;

__attribute__((used)) static int32_t
sli_cmd_common_create_eq(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *qmem,
  uint16_t ignored1, uint16_t ignored2)
{
 sli4_req_common_create_eq_t *eq = ((void*)0);
 uint32_t sli_config_off = 0;
 uint32_t p;
 uintptr_t addr;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  uint32_t payload_size;


  payload_size = max(sizeof(sli4_req_common_create_eq_t),
    sizeof(sli4_res_common_create_queue_t));

  sli_config_off = sli_cmd_sli_config(sli4, buf, size, payload_size,
    ((void*)0));
 }
 eq = (sli4_req_common_create_eq_t *)((uint8_t *)buf + sli_config_off);

 eq->hdr.opcode = SLI4_OPC_COMMON_CREATE_EQ;
 eq->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 eq->hdr.request_length = sizeof(sli4_req_common_create_eq_t) -
     sizeof(sli4_req_hdr_t);

 eq->num_pages = qmem->size / SLI_PAGE_SIZE;
 switch (eq->num_pages) {
 case 1:
  eq->eqesz = SLI4_EQE_SIZE_4;
  eq->count = SLI4_EQ_CNT_1024;
  break;
 case 2:
  eq->eqesz = SLI4_EQE_SIZE_4;
  eq->count = SLI4_EQ_CNT_2048;
  break;
 case 4:
  eq->eqesz = SLI4_EQE_SIZE_4;
  eq->count = SLI4_EQ_CNT_4096;
  break;
 default:
  ocs_log_test(sli4->os, "num_pages %d not valid\n", eq->num_pages);
  return -1;
 }
 eq->valid = TRUE;
 eq->arm = FALSE;
 eq->delay_multiplier = 32;

 for (p = 0, addr = qmem->phys;
   p < eq->num_pages;
   p++, addr += SLI_PAGE_SIZE) {
  eq->page_address[p].low = ocs_addr32_lo(addr);
  eq->page_address[p].high = ocs_addr32_hi(addr);
 }

 return(sli_config_off + sizeof(sli4_req_common_create_eq_t));
}
