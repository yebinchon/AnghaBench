
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {struct oid_array* ref; int nr_theirs; int nr_ours; } ;
struct oid_array {int nr; } ;
struct command {size_t index; char* error_string; int skip_update; int new_oid; struct command* next; } ;


 int ALLOC_ARRAY (int*,int ) ;
 int assign_shallow_commits_to_refs (struct shallow_info*,int *,int*) ;
 int free (int*) ;
 scalar_t__ is_null_oid (int *) ;
 int oid_array_append (struct oid_array*,int *) ;
 int prepare_shallow_update (struct shallow_info*) ;
 int remove_nonexistent_theirs_shallow (struct shallow_info*) ;
 scalar_t__ shallow_update ;

__attribute__((used)) static void update_shallow_info(struct command *commands,
    struct shallow_info *si,
    struct oid_array *ref)
{
 struct command *cmd;
 int *ref_status;
 remove_nonexistent_theirs_shallow(si);
 if (!si->nr_ours && !si->nr_theirs) {
  shallow_update = 0;
  return;
 }

 for (cmd = commands; cmd; cmd = cmd->next) {
  if (is_null_oid(&cmd->new_oid))
   continue;
  oid_array_append(ref, &cmd->new_oid);
  cmd->index = ref->nr - 1;
 }
 si->ref = ref;

 if (shallow_update) {
  prepare_shallow_update(si);
  return;
 }

 ALLOC_ARRAY(ref_status, ref->nr);
 assign_shallow_commits_to_refs(si, ((void*)0), ref_status);
 for (cmd = commands; cmd; cmd = cmd->next) {
  if (is_null_oid(&cmd->new_oid))
   continue;
  if (ref_status[cmd->index]) {
   cmd->error_string = "shallow update not allowed";
   cmd->skip_update = 1;
  }
 }
 free(ref_status);
}
