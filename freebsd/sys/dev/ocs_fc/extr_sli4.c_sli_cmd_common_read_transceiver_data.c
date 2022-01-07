
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {scalar_t__ port_type; int physical_port; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_common_read_transceiver_data_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_10__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_12__ {int page_number; int port; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_read_transceiver_data_t ;
struct TYPE_13__ {int size; scalar_t__ virt; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_READ_TRANSCEIVER_DATA ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int ocs_memset (TYPE_3__*,int ,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,TYPE_4__*) ;

int32_t
sli_cmd_common_read_transceiver_data(sli4_t *sli4, void *buf, size_t size, uint32_t page_num,
         ocs_dma_t *dma)
{
 sli4_req_common_read_transceiver_data_t *req = ((void*)0);
 uint32_t sli_config_off = 0;
 uint32_t payload_size;

 if (dma == ((void*)0)) {

  payload_size = max(sizeof(sli4_req_common_read_transceiver_data_t),
       sizeof(sli4_res_common_read_transceiver_data_t));
 } else {
  payload_size = dma->size;
 }

 if (sli4->port_type == SLI4_PORT_TYPE_FC) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size, payload_size, dma);
 }

 if (dma == ((void*)0)) {
  req = (sli4_req_common_read_transceiver_data_t *)((uint8_t *)buf + sli_config_off);
 } else {
  req = (sli4_req_common_read_transceiver_data_t *)dma->virt;
  ocs_memset(req, 0, dma->size);
 }

 req->hdr.opcode = SLI4_OPC_COMMON_READ_TRANSCEIVER_DATA;
 req->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 req->hdr.request_length = payload_size - sizeof(sli4_req_hdr_t);

 req->page_number = page_num;
 req->port = sli4->physical_port;

 return(sli_config_off + sizeof(sli4_req_common_read_transceiver_data_t));
}
