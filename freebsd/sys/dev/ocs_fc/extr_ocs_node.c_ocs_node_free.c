
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;


struct TYPE_24__ {int * current_state; } ;
struct TYPE_22__ {int fc_id; } ;
struct TYPE_23__ {int nodes_free_list; int active_ios_lock; int pend_frames_lock; TYPE_7__ sm; struct TYPE_23__* sport; int node_list; TYPE_16__ rnode; int * lookup; struct TYPE_23__* ocs; scalar_t__ fcp2device; int gidpt_delay_timer; int hw; scalar_t__ refound; struct TYPE_23__* xport; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef TYPE_1__ ocs_t ;
typedef TYPE_1__ ocs_sport_t ;
typedef TYPE_1__ ocs_node_t ;
typedef int ocs_hw_rtn_e ;
typedef int int32_t ;


 int FALSE ;
 int FC_ADDR_NAMESERVER ;
 int OCS_EVT_ALL_CHILD_NODES_FREE ;
 int OCS_EVT_RSCN_RCVD ;
 scalar_t__ OCS_HW_RTN_IS_ERROR (int) ;
 int TRUE ;
 int node_printf (TYPE_1__*,char*) ;
 int ocs_assert (TYPE_1__*,int) ;
 int ocs_del_crn (TYPE_1__*) ;
 int ocs_del_timer (int *) ;
 int ocs_device_lock (TYPE_1__*) ;
 int ocs_device_unlock (TYPE_1__*) ;
 int ocs_hw_node_free_resources (int *,TYPE_16__*) ;
 int ocs_list_add_tail (int *,TYPE_1__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 int ocs_list_remove (int *,TYPE_1__*) ;
 int ocs_lock_free (int *) ;
 int ocs_log_test (TYPE_1__*,char*,...) ;
 TYPE_1__* ocs_node_find (TYPE_1__*,int ) ;
 int ocs_node_lock_free (TYPE_1__*) ;
 int ocs_node_post_event (TYPE_1__*,int ,int *) ;
 int ocs_sm_post_event (TYPE_7__*,int ,int *) ;
 int ocs_sport_lock (TYPE_1__*) ;
 int ocs_sport_unlock (TYPE_1__*) ;
 scalar_t__ ocs_timer_pending (int *) ;
 int spv_set (int *,int ,int *) ;

int32_t
ocs_node_free(ocs_node_t *node)
{
 ocs_sport_t *sport;
 ocs_t *ocs;
 ocs_xport_t *xport;
 ocs_hw_rtn_e rc = 0;
 ocs_node_t *ns = ((void*)0);
 int post_all_free = FALSE;

 ocs_assert(node, -1);
 ocs_assert(node->sport, -1);
 ocs_assert(node->ocs, -1);
 sport = node->sport;
 ocs_assert(sport, -1);
 ocs = node->ocs;
 ocs_assert(ocs->xport, -1);
 xport = ocs->xport;

 node_printf(node, "Free'd\n");

 if(node->refound) {




  ns = ocs_node_find(node->sport, FC_ADDR_NAMESERVER);
 }


 ocs_sport_lock(sport);
  ocs_list_remove(&sport->node_list, node);


  if (OCS_HW_RTN_IS_ERROR((rc = ocs_hw_node_free_resources(&ocs->hw, &node->rnode)))) {
   ocs_log_test(ocs, "ocs_hw_node_free failed: %d\n", rc);
   rc = -1;
  }


  if (ocs_timer_pending(&node->gidpt_delay_timer)) {
   ocs_del_timer(&node->gidpt_delay_timer);
  }

  if (node->fcp2device) {
   ocs_del_crn(node);
  }


  if (sport->lookup == ((void*)0)) {
   ocs_log_test(node->ocs, "assertion failed: sport lookup is NULL\n");
   ocs_sport_unlock(sport);
   return -1;
  }

  spv_set(sport->lookup, node->rnode.fc_id, ((void*)0));





  if (ocs_list_empty(&sport->node_list)) {
   post_all_free = TRUE;
  }

 ocs_sport_unlock(sport);

 if (post_all_free) {
  ocs_sm_post_event(&sport->sm, OCS_EVT_ALL_CHILD_NODES_FREE, ((void*)0));
 }

 node->sport = ((void*)0);
 node->sm.current_state = ((void*)0);

 ocs_node_lock_free(node);
 ocs_lock_free(&node->pend_frames_lock);
 ocs_lock_free(&node->active_ios_lock);


 ocs_device_lock(ocs);
  ocs_list_add_tail(&xport->nodes_free_list, node);
 ocs_device_unlock(ocs);

 if(ns != ((void*)0)) {

  ocs_node_post_event(ns, OCS_EVT_RSCN_RCVD, ((void*)0));
 }

 return rc;
}
