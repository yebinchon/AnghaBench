
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int link_arg; int (* link ) (int ,void*) ;int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_6__ {int speed; int topology; int status; int medium; int member_0; } ;
typedef TYPE_2__ sli4_link_event_t ;
struct TYPE_7__ {int attn_type; int topology; int port_speed; int event_type; int event_tag; int logical_link_speed; int shared_link_status; int port_fault; int link_number; } ;
typedef TYPE_3__ sli4_link_attention_t ;
typedef int int32_t ;
 int SLI_LINK_MEDIUM_FC ;
 int SLI_LINK_STATUS_DOWN ;
 int SLI_LINK_STATUS_NO_ALPA ;
 int SLI_LINK_STATUS_UP ;
 int SLI_LINK_TOPO_LOOP ;
 int SLI_LINK_TOPO_LOOPBACK_EXTERNAL ;
 int SLI_LINK_TOPO_LOOPBACK_INTERNAL ;
 int SLI_LINK_TOPO_NPORT ;
 int ocs_log_debug (int ,char*,...) ;
 int ocs_log_test (int ,char*) ;
 int stub1 (int ,void*) ;

int32_t
sli_fc_process_link_attention(sli4_t *sli4, void *acqe)
{
 sli4_link_attention_t *link_attn = acqe;
 sli4_link_event_t event = { 0 };

 ocs_log_debug(sli4->os, "link_number=%d attn_type=%#x topology=%#x port_speed=%#x "
   "port_fault=%#x shared_link_status=%#x logical_link_speed=%#x "
   "event_tag=%#x\n", link_attn->link_number, link_attn->attn_type,
   link_attn->topology, link_attn->port_speed, link_attn->port_fault,
   link_attn->shared_link_status, link_attn->logical_link_speed,
   link_attn->event_tag);

 if (!sli4->link) {
  return 0;
 }

 event.medium = SLI_LINK_MEDIUM_FC;

 switch (link_attn->attn_type) {
 case 129:
  event.status = SLI_LINK_STATUS_UP;
  break;
 case 130:
  event.status = SLI_LINK_STATUS_DOWN;
  break;
 case 128:
  ocs_log_debug(sli4->os, "attn_type: no hard alpa\n");
  event.status = SLI_LINK_STATUS_NO_ALPA;
  break;
 default:
  ocs_log_test(sli4->os, "attn_type: unknown\n");
  break;
 }

 switch (link_attn->event_type) {
 case 136:
  break;
 case 135:
  ocs_log_debug(sli4->os, "event_type: FC shared link event \n");
  break;
 default:
  ocs_log_test(sli4->os, "event_type: unknown\n");
  break;
 }

 switch (link_attn->topology) {
 case 132:
  event.topology = SLI_LINK_TOPO_NPORT;
  break;
 case 134:
  event.topology = SLI_LINK_TOPO_LOOP;
  break;
 case 133:
  ocs_log_debug(sli4->os, "topology Internal loopback\n");
  event.topology = SLI_LINK_TOPO_LOOPBACK_INTERNAL;
  break;
 case 131:
  ocs_log_debug(sli4->os, "topology serdes loopback\n");
  event.topology = SLI_LINK_TOPO_LOOPBACK_EXTERNAL;
  break;
 default:
  ocs_log_test(sli4->os, "topology: unknown\n");
  break;
 }

 event.speed = link_attn->port_speed * 1000;

 sli4->link(sli4->link_arg, (void *)&event);

 return 0;
}
