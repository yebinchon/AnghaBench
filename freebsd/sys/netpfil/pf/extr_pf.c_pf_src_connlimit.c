
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* ptr; } ;
struct TYPE_11__ {int state; } ;
struct TYPE_10__ {int tcp_est; int state; } ;
struct pf_state {int direction; TYPE_7__ rule; TYPE_5__** key; TYPE_4__* src_node; TYPE_3__ dst; TYPE_2__ src; int timeout; } ;
struct pf_overload_entry {int dir; TYPE_6__* rule; int af; int addr; } ;
struct TYPE_16__ {int * lcounters; } ;
struct TYPE_9__ {scalar_t__ limit; } ;
struct TYPE_14__ {scalar_t__ max_src_conn; int * overload_tbl; TYPE_1__ max_src_conn_rate; } ;
struct TYPE_13__ {int af; } ;
struct TYPE_12__ {scalar_t__ conn; int addr; int conn_rate; } ;


 size_t LCNT_SRCCONN ;
 size_t LCNT_SRCCONNRATE ;
 int M_NOWAIT ;
 int M_PFTEMP ;
 int PFTM_PURGE ;
 int PF_OVERLOADQ_LOCK () ;
 int PF_OVERLOADQ_UNLOCK () ;
 size_t PF_SK_WIRE ;
 int PF_STATE_LOCK_ASSERT (struct pf_state*) ;
 int SLIST_INSERT_HEAD (int *,struct pf_overload_entry*,int ) ;
 int TCPS_CLOSED ;
 int V_pf_overloadqueue ;
 int V_pf_overloadtask ;
 TYPE_8__ V_pf_status ;
 int bcopy (int *,int *,int) ;
 int counter_u64_add (int ,int) ;
 struct pf_overload_entry* malloc (int,int ,int ) ;
 int next ;
 int pf_add_threshold (int *) ;
 scalar_t__ pf_check_threshold (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
pf_src_connlimit(struct pf_state **state)
{
 struct pf_overload_entry *pfoe;
 int bad = 0;

 PF_STATE_LOCK_ASSERT(*state);

 (*state)->src_node->conn++;
 (*state)->src.tcp_est = 1;
 pf_add_threshold(&(*state)->src_node->conn_rate);

 if ((*state)->rule.ptr->max_src_conn &&
     (*state)->rule.ptr->max_src_conn <
     (*state)->src_node->conn) {
  counter_u64_add(V_pf_status.lcounters[LCNT_SRCCONN], 1);
  bad++;
 }

 if ((*state)->rule.ptr->max_src_conn_rate.limit &&
     pf_check_threshold(&(*state)->src_node->conn_rate)) {
  counter_u64_add(V_pf_status.lcounters[LCNT_SRCCONNRATE], 1);
  bad++;
 }

 if (!bad)
  return (0);


 (*state)->timeout = PFTM_PURGE;
 (*state)->src.state = (*state)->dst.state = TCPS_CLOSED;

 if ((*state)->rule.ptr->overload_tbl == ((void*)0))
  return (1);


 pfoe = malloc(sizeof(*pfoe), M_PFTEMP, M_NOWAIT);
 if (pfoe == ((void*)0))
  return (1);

 bcopy(&(*state)->src_node->addr, &pfoe->addr, sizeof(pfoe->addr));
 pfoe->af = (*state)->key[PF_SK_WIRE]->af;
 pfoe->rule = (*state)->rule.ptr;
 pfoe->dir = (*state)->direction;
 PF_OVERLOADQ_LOCK();
 SLIST_INSERT_HEAD(&V_pf_overloadqueue, pfoe, next);
 PF_OVERLOADQ_UNLOCK();
 taskqueue_enqueue(taskqueue_swi, &V_pf_overloadtask);

 return (1);
}
