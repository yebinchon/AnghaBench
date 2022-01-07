
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int sem; int context; int evt; int node; } ;
typedef TYPE_1__ ocs_xport_post_node_event_t ;
typedef int ocs_hw_t ;
typedef int int32_t ;


 int ocs_node_post_event (int ,int ,int ) ;
 int ocs_sem_v (int *) ;

__attribute__((used)) static int32_t
ocs_xport_post_node_event_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_xport_post_node_event_t *payload = arg;

 if (payload != ((void*)0)) {
  ocs_node_post_event(payload->node, payload->evt, payload->context);
  ocs_sem_v(&payload->sem);
 }

        return 0;
}
