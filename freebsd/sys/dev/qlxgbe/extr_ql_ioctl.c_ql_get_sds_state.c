
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num_sds_rings; TYPE_2__* sds; } ;
struct TYPE_9__ {TYPE_1__ hw; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_10__ {int sds_consumer; int sdsr_next; } ;
typedef TYPE_4__ qla_drvr_state_sds_t ;
struct TYPE_8__ {int sds_consumer; int sdsr_next; } ;



__attribute__((used)) static void
ql_get_sds_state(qla_host_t *ha, qla_drvr_state_sds_t *sds_state)
{
 int i;

 for (i = 0; i < ha->hw.num_sds_rings; i++) {
  sds_state->sdsr_next = ha->hw.sds[i].sdsr_next;
  sds_state->sds_consumer = ha->hw.sds[i].sds_consumer;
  sds_state++;
 }
 return;
}
