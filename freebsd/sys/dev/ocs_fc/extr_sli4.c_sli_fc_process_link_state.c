
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int link_arg; int (* link ) (int ,void*) ;int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_6__ {scalar_t__ link_type; int port_link_status; int port_speed; } ;
typedef TYPE_2__ sli4_link_state_t ;
struct TYPE_7__ {int speed; int status; int medium; int topology; int member_0; } ;
typedef TYPE_3__ sli4_link_event_t ;
typedef int int32_t ;


 scalar_t__ SLI4_LINK_TYPE_ETHERNET ;




 int SLI_LINK_MEDIUM_ETHERNET ;
 int SLI_LINK_MEDIUM_MAX ;
 int SLI_LINK_STATUS_DOWN ;
 int SLI_LINK_STATUS_MAX ;
 int SLI_LINK_STATUS_UP ;
 int SLI_LINK_TOPO_MAX ;
 int SLI_LINK_TOPO_NPORT ;
 int ocs_log_test (int ,char*,scalar_t__) ;
 int stub1 (int ,void*) ;

int32_t
sli_fc_process_link_state(sli4_t *sli4, void *acqe)
{
 sli4_link_state_t *link_state = acqe;
 sli4_link_event_t event = { 0 };
 int32_t rc = 0;

 if (!sli4->link) {

  return 0;
 }

 if (SLI4_LINK_TYPE_ETHERNET == link_state->link_type) {
  event.topology = SLI_LINK_TOPO_NPORT;
  event.medium = SLI_LINK_MEDIUM_ETHERNET;
 } else {

  ocs_log_test(sli4->os, "unsupported link type %#x\n",
    link_state->link_type);
  event.topology = SLI_LINK_TOPO_MAX;
  event.medium = SLI_LINK_MEDIUM_MAX;
  rc = -1;
 }

 switch (link_state->port_link_status) {
 case 129:
 case 131:
  event.status = SLI_LINK_STATUS_DOWN;
  break;
 case 128:
 case 130:
  event.status = SLI_LINK_STATUS_UP;
  break;
 default:
  ocs_log_test(sli4->os, "unsupported link status %#x\n",
    link_state->port_link_status);
  event.status = SLI_LINK_STATUS_MAX;
  rc = -1;
 }

 switch (link_state->port_speed) {
 case 0:
  event.speed = 0;
  break;
 case 1:
  event.speed = 10;
  break;
 case 2:
  event.speed = 100;
  break;
 case 3:
  event.speed = 1000;
  break;
 case 4:
  event.speed = 10000;
  break;
 case 5:
  event.speed = 20000;
  break;
 case 6:
  event.speed = 25000;
  break;
 case 7:
  event.speed = 40000;
  break;
 case 8:
  event.speed = 100000;
  break;
 default:
  ocs_log_test(sli4->os, "unsupported port_speed %#x\n",
    link_state->port_speed);
  rc = -1;
 }

 sli4->link(sli4->link_arg, (void *)&event);

 return rc;
}
