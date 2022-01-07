
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int sli4_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_3__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_4__ {int fcf_count; scalar_t__* fcf_index; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_req_fcoe_rediscover_fcf_t ;
typedef int int32_t ;


 int SLI4_OPC_FCOE_REDISCOVER_FCF ;
 int SLI4_SUBSYSTEM_FCFCOE ;
 scalar_t__ UINT16_MAX ;
 int sli_cmd_sli_config (int *,void*,size_t,int,int *) ;

int32_t
sli_cmd_fcoe_rediscover_fcf(sli4_t *sli4, void *buf, size_t size, uint16_t index)
{
 sli4_req_fcoe_rediscover_fcf_t *redisc = ((void*)0);
 uint32_t sli_config_off = 0;

 sli_config_off = sli_cmd_sli_config(sli4, buf, size,
   sizeof(sli4_req_fcoe_rediscover_fcf_t),
   ((void*)0));

 redisc = (sli4_req_fcoe_rediscover_fcf_t *)((uint8_t *)buf + sli_config_off);

 redisc->hdr.opcode = SLI4_OPC_FCOE_REDISCOVER_FCF;
 redisc->hdr.subsystem = SLI4_SUBSYSTEM_FCFCOE;
 redisc->hdr.request_length = sizeof(sli4_req_fcoe_rediscover_fcf_t) -
     sizeof(sli4_req_hdr_t);

 if (index == UINT16_MAX) {
  redisc->fcf_count = 0;
 } else {
  redisc->fcf_count = 1;
  redisc->fcf_index[0] = index;
 }

 return(sli_config_off + sizeof(sli4_req_fcoe_rediscover_fcf_t));
}
