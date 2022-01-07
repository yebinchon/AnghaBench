
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expire_reflog_policy_cb {scalar_t__ unreachable_expire_kind; int tip_commit; struct commit_list* tips; } ;
struct commit_list {int item; struct commit_list* next; } ;


 int REACHABLE ;
 scalar_t__ UE_ALWAYS ;
 scalar_t__ UE_HEAD ;
 int clear_commit_marks (int ,int ) ;
 int free_commit_list (struct commit_list*) ;

__attribute__((used)) static void reflog_expiry_cleanup(void *cb_data)
{
 struct expire_reflog_policy_cb *cb = cb_data;

 if (cb->unreachable_expire_kind != UE_ALWAYS) {
  if (cb->unreachable_expire_kind == UE_HEAD) {
   struct commit_list *elem;
   for (elem = cb->tips; elem; elem = elem->next)
    clear_commit_marks(elem->item, REACHABLE);
   free_commit_list(cb->tips);
  } else {
   clear_commit_marks(cb->tip_commit, REACHABLE);
  }
 }
}
