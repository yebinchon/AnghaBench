
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_common_query_fw_config_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_6__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_query_fw_config_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_QUERY_FW_CONFIG ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

__attribute__((used)) static int32_t
sli_cmd_common_query_fw_config(sli4_t *sli4, void *buf, size_t size)
{
 sli4_req_common_query_fw_config_t *fw_config;
 uint32_t sli_config_off = 0;
 uint32_t payload_size;


 payload_size = max(sizeof(sli4_req_common_query_fw_config_t),
      sizeof(sli4_res_common_query_fw_config_t));

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    payload_size,
    ((void*)0));
 }

 fw_config = (sli4_req_common_query_fw_config_t*)((uint8_t*)buf + sli_config_off);
 fw_config->hdr.opcode = SLI4_OPC_COMMON_QUERY_FW_CONFIG;
 fw_config->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 fw_config->hdr.request_length = payload_size - sizeof(sli4_req_hdr_t);
 return sli_config_off + sizeof(sli4_req_common_query_fw_config_t);
}
