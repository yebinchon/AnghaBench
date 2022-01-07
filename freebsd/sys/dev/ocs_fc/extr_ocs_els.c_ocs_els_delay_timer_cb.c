
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_node_t ;
struct TYPE_4__ {int delay_timer; int ocs; int * node; } ;
typedef TYPE_1__ ocs_io_t ;


 int OCS_EVT_TIMER_EXPIRED ;
 int ocs_els_post_event (TYPE_1__*,int ,int *) ;
 scalar_t__ ocs_node_lock_try (int *) ;
 int ocs_node_unlock (int *) ;
 int ocs_setup_timer (int ,int *,void (*) (void*),TYPE_1__*,int) ;

__attribute__((used)) static void
ocs_els_delay_timer_cb(void *arg)
{
 ocs_io_t *els = arg;
 ocs_node_t *node = els->node;
 if (ocs_node_lock_try(node)) {
  ocs_els_post_event(els, OCS_EVT_TIMER_EXPIRED, ((void*)0));
  ocs_node_unlock(node);
 } else {
  ocs_setup_timer(els->ocs, &els->delay_timer, ocs_els_delay_timer_cb, els, 1);
 }
}
