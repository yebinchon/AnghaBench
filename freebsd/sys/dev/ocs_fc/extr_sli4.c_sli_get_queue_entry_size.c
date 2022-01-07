
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int wqe_size; } ;
struct TYPE_6__ {int os; TYPE_1__ config; int port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;


 int SLI4_FCOE_RQE_SIZE ;
 int SLI4_PORT_TYPE_FC ;





 int ocs_log_err (int *,char*,TYPE_2__*) ;
 int ocs_log_test (int ,char*,...) ;

int32_t
sli_get_queue_entry_size(sli4_t *sli4, uint32_t qtype)
{
 uint32_t size = 0;

 if (!sli4) {
  ocs_log_err(((void*)0), "bad parameter sli4=%p\n", sli4);
  return -1;
 }

 switch (qtype) {
 case 131:
  size = sizeof(uint32_t);
  break;
 case 132:
  size = 16;
  break;
 case 130:
  size = 256;
  break;
 case 128:
  if (SLI4_PORT_TYPE_FC == sli4->port_type) {
   size = sli4->config.wqe_size;
  } else {

   ocs_log_test(sli4->os, "unsupported queue entry size\n");
   return -1;
  }
  break;
 case 129:
  size = SLI4_FCOE_RQE_SIZE;
  break;
 default:
  ocs_log_test(sli4->os, "unknown queue type %d\n", qtype);
  return -1;
 }
 return size;
}
