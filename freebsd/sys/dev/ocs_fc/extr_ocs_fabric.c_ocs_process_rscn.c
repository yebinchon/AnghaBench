
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_t ;
typedef int ocs_sport_t ;
struct TYPE_5__ {int * sport; int * ocs; } ;
typedef TYPE_1__ ocs_node_t ;
typedef int ocs_node_cb_t ;


 int FC_ADDR_NAMESERVER ;
 int OCS_EVT_RSCN_RCVD ;
 int ocs_log_warn (int *,char*) ;
 TYPE_1__* ocs_node_find (int *,int ) ;
 int ocs_node_post_event (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
ocs_process_rscn(ocs_node_t *node, ocs_node_cb_t *cbdata)
{
 ocs_t *ocs = node->ocs;
 ocs_sport_t *sport = node->sport;
 ocs_node_t *ns;


 ns = ocs_node_find(sport, FC_ADDR_NAMESERVER);
 if (ns != ((void*)0)) {
  ocs_node_post_event(ns, OCS_EVT_RSCN_RCVD, cbdata);
 } else {
  ocs_log_warn(ocs, "can't find name server node\n");
 }
}
