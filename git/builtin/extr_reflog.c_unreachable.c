
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct expire_reflog_policy_cb {scalar_t__ mark_limit; scalar_t__ mark_list; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int REACHABLE ;
 scalar_t__ is_null_oid (struct object_id*) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;
 int mark_reachable (struct expire_reflog_policy_cb*) ;
 int the_repository ;

__attribute__((used)) static int unreachable(struct expire_reflog_policy_cb *cb, struct commit *commit, struct object_id *oid)
{




 if (!commit) {
  if (is_null_oid(oid))
   return 0;

  commit = lookup_commit_reference_gently(the_repository, oid,
       1);


  if (!commit)
   return 0;
 }


 if (commit->object.flags & REACHABLE)
  return 0;

 if (cb->mark_list && cb->mark_limit) {
  cb->mark_limit = 0;
  mark_reachable(cb);
 }

 return !(commit->object.flags & REACHABLE);
}
