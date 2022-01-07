
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_2__ {int sm; } ;
typedef TYPE_1__ ocs_sli_port_t ;
typedef int ocs_hw_port_event_e ;
typedef int int32_t ;


 int OCS_EVT_SPORT_ALLOC_FAIL ;
 int OCS_EVT_SPORT_ALLOC_OK ;
 int OCS_EVT_SPORT_ATTACH_FAIL ;
 int OCS_EVT_SPORT_ATTACH_OK ;
 int OCS_EVT_SPORT_FREE_FAIL ;
 int OCS_EVT_SPORT_FREE_OK ;






 int ocs_log_debug (int *,char*) ;
 int ocs_log_test (int *,char*,int) ;
 int ocs_sm_post_event (int *,int ,int *) ;

int32_t
ocs_port_cb(void *arg, ocs_hw_port_event_e event, void *data)
{
 ocs_t *ocs = arg;
 ocs_sli_port_t *sport = data;

 switch (event) {
 case 132:
  ocs_log_debug(ocs, "OCS_HW_PORT_ALLOC_OK\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_ALLOC_OK, ((void*)0));
  break;
 case 133:
  ocs_log_debug(ocs, "OCS_HW_PORT_ALLOC_FAIL\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_ALLOC_FAIL, ((void*)0));
  break;
 case 130:
  ocs_log_debug(ocs, "OCS_HW_PORT_ATTACH_OK\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_ATTACH_OK, ((void*)0));
  break;
 case 131:
  ocs_log_debug(ocs, "OCS_HW_PORT_ATTACH_FAIL\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_ATTACH_FAIL, ((void*)0));
  break;
 case 128:
  ocs_log_debug(ocs, "OCS_HW_PORT_FREE_OK\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_FREE_OK, ((void*)0));
  break;
 case 129:
  ocs_log_debug(ocs, "OCS_HW_PORT_FREE_FAIL\n");
  ocs_sm_post_event(&sport->sm, OCS_EVT_SPORT_FREE_FAIL, ((void*)0));
  break;
 default:
  ocs_log_test(ocs, "unknown event %#x\n", event);
 }

 return 0;
}
