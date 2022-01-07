
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_hdr_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_6__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_8__ {int rq_id; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_fcoe_rq_destroy_t ;
typedef int int32_t ;


 int SLI4_OPC_FCOE_RQ_DESTROY ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_FCFCOE ;
 int max (int,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_fcoe_rq_destroy(sli4_t *sli4, void *buf, size_t size, uint16_t rq_id)
{
 sli4_req_fcoe_rq_destroy_t *rq = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  uint32_t payload_size;


  payload_size = max(sizeof(sli4_req_fcoe_rq_destroy_t),
    sizeof(sli4_res_hdr_t));

  sli_config_off = sli_cmd_sli_config(sli4, buf, size, payload_size,
    ((void*)0));
 }
 rq = (sli4_req_fcoe_rq_destroy_t *)((uint8_t *)buf + sli_config_off);

 rq->hdr.opcode = SLI4_OPC_FCOE_RQ_DESTROY;
 rq->hdr.subsystem = SLI4_SUBSYSTEM_FCFCOE;
 rq->hdr.request_length = sizeof(sli4_req_fcoe_rq_destroy_t) -
     sizeof(sli4_req_hdr_t);

 rq->rq_id = rq_id;

 return(sli_config_off + sizeof(sli4_req_fcoe_rq_destroy_t));
}
