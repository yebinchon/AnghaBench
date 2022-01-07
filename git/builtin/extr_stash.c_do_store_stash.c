
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int REF_FORCE_CREATE_REFLOG ;
 int UPDATE_REFS_MSG_ON_ERR ;
 int UPDATE_REFS_QUIET_ON_ERR ;
 int _ (char*) ;
 int fprintf_ln (int ,int ,int ,int ) ;
 int oid_to_hex (struct object_id const*) ;
 int ref_stash ;
 int stderr ;
 scalar_t__ update_ref (char const*,int ,struct object_id const*,int *,int ,int ) ;

__attribute__((used)) static int do_store_stash(const struct object_id *w_commit, const char *stash_msg,
     int quiet)
{
 if (!stash_msg)
  stash_msg = "Created via \"git stash store\".";

 if (update_ref(stash_msg, ref_stash, w_commit, ((void*)0),
         REF_FORCE_CREATE_REFLOG,
         quiet ? UPDATE_REFS_QUIET_ON_ERR :
         UPDATE_REFS_MSG_ON_ERR)) {
  if (!quiet) {
   fprintf_ln(stderr, _("Cannot update %s with %s"),
       ref_stash, oid_to_hex(w_commit));
  }
  return -1;
 }

 return 0;
}
