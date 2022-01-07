
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* ocs; int gidpt_delay_timer; } ;
typedef TYPE_1__ ocs_node_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int xport; } ;


 int OCS_EVT_GIDPT_DELAY_EXPIRED ;
 int OCS_XPORT_POST_NODE_EVENT ;
 int ocs_del_timer (int *) ;
 int ocs_log_err (TYPE_3__*,char*,scalar_t__) ;
 scalar_t__ ocs_xport_control (int ,int ,TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
gidpt_delay_timer_cb(void *arg)
{
 ocs_node_t *node = arg;
 int32_t rc;

 ocs_del_timer(&node->gidpt_delay_timer);
 rc = ocs_xport_control(node->ocs->xport, OCS_XPORT_POST_NODE_EVENT, node, OCS_EVT_GIDPT_DELAY_EXPIRED, ((void*)0));
 if (rc) {
  ocs_log_err(node->ocs, "ocs_xport_control(OCS_XPORT_POST_NODE_EVENT) failed: %d\n", rc);
 }
}
