
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int lock; } ;


 int LIST_INIT (int *) ;
 int LOCK_OWNER_HASH_SIZE ;
 int graph_init (int *) ;
 TYPE_1__* lf_lock_owners ;
 int lf_lock_states ;
 int lf_lock_states_lock ;
 int lf_owner_graph ;
 int lf_owner_graph_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
lf_init(void *dummy)
{
 int i;

 sx_init(&lf_lock_states_lock, "lock states lock");
 LIST_INIT(&lf_lock_states);

 for (i = 0; i < LOCK_OWNER_HASH_SIZE; i++) {
  sx_init(&lf_lock_owners[i].lock, "lock owners lock");
  LIST_INIT(&lf_lock_owners[i].list);
 }

 sx_init(&lf_owner_graph_lock, "owner graph lock");
 graph_init(&lf_owner_graph);
}
