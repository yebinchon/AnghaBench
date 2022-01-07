
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct shallow_info {scalar_t__* shallow_ref; } ;
struct object_id {int hash; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;
struct command {char* ref_name; int did_not_exist; size_t index; struct object_id new_oid; struct object_id old_oid; } ;







 scalar_t__ OBJ_COMMIT ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ check_refname_format (char const*,int ) ;
 int deny_current_branch ;
 int deny_delete_current ;
 scalar_t__ deny_deletes ;
 scalar_t__ deny_non_fast_forwards ;
 int error (char*,char const*) ;
 int free (char*) ;
 int get_git_namespace () ;
 int has_object_file (struct object_id*) ;
 scalar_t__ head_name ;
 int in_merge_bases (struct commit*,struct commit*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 scalar_t__ is_ref_checked_out (char*) ;
 char const* oid_to_hex (struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ ref_exists (char const*) ;
 scalar_t__ ref_transaction_delete (int ,char*,struct object_id*,int ,char*,struct strbuf*) ;
 scalar_t__ ref_transaction_update (int ,char*,struct object_id*,struct object_id*,int ,char*,struct strbuf*) ;
 int refuse_unconfigured_deny () ;
 int refuse_unconfigured_deny_delete_current () ;
 int rp_error (char*,char const*) ;
 int rp_warning (char*) ;
 scalar_t__ run_update_hook (struct command*) ;
 scalar_t__ shallow_update ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,scalar_t__) ;
 int the_repository ;
 int transaction ;
 scalar_t__ update_shallow_ref (struct command*,struct shallow_info*) ;
 char* update_worktree (int ) ;

__attribute__((used)) static const char *update(struct command *cmd, struct shallow_info *si)
{
 const char *name = cmd->ref_name;
 struct strbuf namespaced_name_buf = STRBUF_INIT;
 static char *namespaced_name;
 const char *ret;
 struct object_id *old_oid = &cmd->old_oid;
 struct object_id *new_oid = &cmd->new_oid;
 int do_update_worktree = 0;


 if (!starts_with(name, "refs/") || check_refname_format(name + 5, 0)) {
  rp_error("refusing to create funny ref '%s' remotely", name);
  return "funny refname";
 }

 strbuf_addf(&namespaced_name_buf, "%s%s", get_git_namespace(), name);
 free(namespaced_name);
 namespaced_name = strbuf_detach(&namespaced_name_buf, ((void*)0));

 if (is_ref_checked_out(namespaced_name)) {
  switch (deny_current_branch) {
  case 132:
   break;
  case 128:
   rp_warning("updating the current branch");
   break;
  case 131:
  case 130:
   rp_error("refusing to update checked out branch: %s", name);
   if (deny_current_branch == 130)
    refuse_unconfigured_deny();
   return "branch is currently checked out";
  case 129:

   do_update_worktree = 1;
   break;
  }
 }

 if (!is_null_oid(new_oid) && !has_object_file(new_oid)) {
  error("unpack should have generated %s, "
        "but I can't find it!", oid_to_hex(new_oid));
  return "bad pack";
 }

 if (!is_null_oid(old_oid) && is_null_oid(new_oid)) {
  if (deny_deletes && starts_with(name, "refs/heads/")) {
   rp_error("denying ref deletion for %s", name);
   return "deletion prohibited";
  }

  if (head_name && !strcmp(namespaced_name, head_name)) {
   switch (deny_delete_current) {
   case 132:
    break;
   case 128:
    rp_warning("deleting the current branch");
    break;
   case 131:
   case 130:
   case 129:
    if (deny_delete_current == 130)
     refuse_unconfigured_deny_delete_current();
    rp_error("refusing to delete the current branch: %s", name);
    return "deletion of the current branch prohibited";
   default:
    return "Invalid denyDeleteCurrent setting";
   }
  }
 }

 if (deny_non_fast_forwards && !is_null_oid(new_oid) &&
     !is_null_oid(old_oid) &&
     starts_with(name, "refs/heads/")) {
  struct object *old_object, *new_object;
  struct commit *old_commit, *new_commit;

  old_object = parse_object(the_repository, old_oid);
  new_object = parse_object(the_repository, new_oid);

  if (!old_object || !new_object ||
      old_object->type != OBJ_COMMIT ||
      new_object->type != OBJ_COMMIT) {
   error("bad sha1 objects for %s", name);
   return "bad ref";
  }
  old_commit = (struct commit *)old_object;
  new_commit = (struct commit *)new_object;
  if (!in_merge_bases(old_commit, new_commit)) {
   rp_error("denying non-fast-forward %s"
     " (you should pull first)", name);
   return "non-fast-forward";
  }
 }
 if (run_update_hook(cmd)) {
  rp_error("hook declined to update %s", name);
  return "hook declined";
 }

 if (do_update_worktree) {
  ret = update_worktree(new_oid->hash);
  if (ret)
   return ret;
 }

 if (is_null_oid(new_oid)) {
  struct strbuf err = STRBUF_INIT;
  if (!parse_object(the_repository, old_oid)) {
   old_oid = ((void*)0);
   if (ref_exists(name)) {
    rp_warning("Allowing deletion of corrupt ref.");
   } else {
    rp_warning("Deleting a non-existent ref.");
    cmd->did_not_exist = 1;
   }
  }
  if (ref_transaction_delete(transaction,
        namespaced_name,
        old_oid,
        0, "push", &err)) {
   rp_error("%s", err.buf);
   strbuf_release(&err);
   return "failed to delete";
  }
  strbuf_release(&err);
  return ((void*)0);
 }
 else {
  struct strbuf err = STRBUF_INIT;
  if (shallow_update && si->shallow_ref[cmd->index] &&
      update_shallow_ref(cmd, si))
   return "shallow error";

  if (ref_transaction_update(transaction,
        namespaced_name,
        new_oid, old_oid,
        0, "push",
        &err)) {
   rp_error("%s", err.buf);
   strbuf_release(&err);

   return "failed to update ref";
  }
  strbuf_release(&err);

  return ((void*)0);
 }
}
