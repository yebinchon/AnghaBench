
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ port_type; } ;
typedef TYPE_1__ sli4_t ;
typedef int sli4_res_common_get_sli4_parameters_t ;
struct TYPE_6__ {int request_length; int subsystem; int opcode; } ;
typedef TYPE_2__ sli4_req_hdr_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_GET_SLI4_PARAMETERS ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int sli_cmd_sli_config (TYPE_1__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_common_get_sli4_parameters(sli4_t *sli4, void *buf, size_t size)
{
 sli4_req_hdr_t *hdr = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    sizeof(sli4_res_common_get_sli4_parameters_t),
    ((void*)0));
 }

 hdr = (sli4_req_hdr_t *)((uint8_t *)buf + sli_config_off);

 hdr->opcode = SLI4_OPC_COMMON_GET_SLI4_PARAMETERS;
 hdr->subsystem = SLI4_SUBSYSTEM_COMMON;
 hdr->request_length = 0x50;

 return(sli_config_off + sizeof(sli4_req_hdr_t));
}
