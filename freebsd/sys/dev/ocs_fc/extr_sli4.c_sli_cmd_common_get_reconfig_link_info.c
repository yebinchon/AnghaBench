
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
struct TYPE_11__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_common_get_reconfig_link_info_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_10__ {int request_length; scalar_t__ version; int subsystem; int opcode; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_get_reconfig_link_info_t ;
struct TYPE_13__ {int size; TYPE_3__* virt; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_GET_RECONFIG_LINK_INFO ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int ocs_memset (TYPE_3__*,int ,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,TYPE_4__*) ;

int32_t
sli_cmd_common_get_reconfig_link_info(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *dma)
{
        sli4_req_common_get_reconfig_link_info_t *req = ((void*)0);
        uint32_t cmd_off = 0;
        uint32_t payload_size;


        payload_size = max(sizeof(sli4_req_common_get_reconfig_link_info_t),
                           sizeof(sli4_res_common_get_reconfig_link_info_t));

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  cmd_off = sli_cmd_sli_config(sli4, buf, size,
    payload_size,
    dma);
 }

 if (dma != ((void*)0)) {
  req = dma->virt;
  ocs_memset(req, 0, dma->size);
  payload_size = dma->size;
 } else {
  req = (sli4_req_common_get_reconfig_link_info_t *)((uint8_t *)buf + cmd_off);
  payload_size = sizeof(sli4_req_common_get_reconfig_link_info_t);
 }

        req->hdr.opcode = SLI4_OPC_COMMON_GET_RECONFIG_LINK_INFO;
        req->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
        req->hdr.request_length = payload_size - sizeof(sli4_req_hdr_t);
        req->hdr.version = 0;

        return(cmd_off + sizeof(sli4_req_common_get_reconfig_link_info_t));
}
