
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_common_nop_t ;
struct TYPE_6__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_8__ {int context; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_nop_t ;
typedef int int32_t ;
typedef int context ;


 int SLI4_OPC_COMMON_NOP ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int ocs_memcpy (int *,int *,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int ,int *) ;

int32_t
sli_cmd_common_nop(sli4_t *sli4, void *buf, size_t size, uint64_t context)
{
 sli4_req_common_nop_t *nop = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,

    max(sizeof(sli4_req_common_nop_t), sizeof(sli4_res_common_nop_t)),
    ((void*)0));
 }

 nop = (sli4_req_common_nop_t *)((uint8_t *)buf + sli_config_off);

 nop->hdr.opcode = SLI4_OPC_COMMON_NOP;
 nop->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 nop->hdr.request_length = 8;

 ocs_memcpy(&nop->context, &context, sizeof(context));

 return(sli_config_off + sizeof(sli4_req_common_nop_t));
}
