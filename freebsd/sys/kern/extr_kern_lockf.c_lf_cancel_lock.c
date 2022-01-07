
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry_list {int dummy; } ;
struct lockf_entry {int dummy; } ;
struct lockf {int dummy; } ;


 int LIST_EMPTY (struct lockf_entry_list*) ;
 struct lockf_entry* LIST_FIRST (struct lockf_entry_list*) ;
 int LIST_INIT (struct lockf_entry_list*) ;
 int LIST_REMOVE (struct lockf_entry*,int ) ;
 int TRUE ;
 int lf_activate_lock (struct lockf*,struct lockf_entry*) ;
 int lf_free_lock (struct lockf_entry*) ;
 int lf_link ;
 int lf_owner_graph_lock ;
 int lf_remove_outgoing (struct lockf_entry*) ;
 int lf_update_dependancies (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
lf_cancel_lock(struct lockf *state, struct lockf_entry *lock)
{
 struct lockf_entry_list granted;
 LIST_REMOVE(lock, lf_link);




 sx_xlock(&lf_owner_graph_lock);
 lf_remove_outgoing(lock);
 sx_xunlock(&lf_owner_graph_lock);






 LIST_INIT(&granted);
 lf_update_dependancies(state, lock, TRUE, &granted);
 lf_free_lock(lock);




 while (!LIST_EMPTY(&granted)) {
  lock = LIST_FIRST(&granted);
  LIST_REMOVE(lock, lf_link);
  lf_activate_lock(state, lock);
 }
}
