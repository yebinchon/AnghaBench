
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
struct TYPE_11__ {scalar_t__ port_type; } ;
typedef TYPE_3__ sli4_t ;
typedef int sli4_res_hdr_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_9__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_12__ {int num_eq; TYPE_2__* eq_delay_record; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_req_common_modify_eq_delay_t ;
struct TYPE_13__ {int id; } ;
typedef TYPE_5__ sli4_queue_t ;
typedef int int32_t ;
struct TYPE_10__ {int phase; int delay_multiplier; int eq_id; } ;


 int SLI4_OPC_COMMON_MODIFY_EQ_DELAY ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int sli_cmd_sli_config (TYPE_3__*,void*,size_t,int ,int *) ;

__attribute__((used)) static int32_t
sli_cmd_common_modify_eq_delay(sli4_t *sli4, void *buf, size_t size, sli4_queue_t *q, int num_q, uint32_t shift,
    uint32_t delay_mult)
{
 sli4_req_common_modify_eq_delay_t *modify_delay = ((void*)0);
 uint32_t sli_config_off = 0;
 int i;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,

    max(sizeof(sli4_req_common_modify_eq_delay_t), sizeof(sli4_res_hdr_t)),
    ((void*)0));
 }

 modify_delay = (sli4_req_common_modify_eq_delay_t *)((uint8_t *)buf + sli_config_off);

 modify_delay->hdr.opcode = SLI4_OPC_COMMON_MODIFY_EQ_DELAY;
 modify_delay->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 modify_delay->hdr.request_length = sizeof(sli4_req_common_modify_eq_delay_t) -
     sizeof(sli4_req_hdr_t);

 modify_delay->num_eq = num_q;

 for (i = 0; i<num_q; i++) {
  modify_delay->eq_delay_record[i].eq_id = q[i].id;
  modify_delay->eq_delay_record[i].phase = shift;
  modify_delay->eq_delay_record[i].delay_multiplier = delay_mult;
 }

 return(sli_config_off + sizeof(sli4_req_common_modify_eq_delay_t));
}
