
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct child_process {int git_cmd; int env_array; int args; } ;
struct TYPE_2__ {int buf; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushl (int *,char*,char*,int *) ;
 int child_process_init (struct child_process*) ;
 char* oid_to_hex (struct object_id*) ;
 int remove_path (int ) ;
 int run_command (struct child_process*) ;
 TYPE_1__ stash_index_path ;

__attribute__((used)) static int restore_untracked(struct object_id *u_tree)
{
 int res;
 struct child_process cp = CHILD_PROCESS_INIT;






 cp.git_cmd = 1;
 argv_array_push(&cp.args, "read-tree");
 argv_array_push(&cp.args, oid_to_hex(u_tree));
 argv_array_pushf(&cp.env_array, "GIT_INDEX_FILE=%s",
    stash_index_path.buf);
 if (run_command(&cp)) {
  remove_path(stash_index_path.buf);
  return -1;
 }

 child_process_init(&cp);
 cp.git_cmd = 1;
 argv_array_pushl(&cp.args, "checkout-index", "--all", ((void*)0));
 argv_array_pushf(&cp.env_array, "GIT_INDEX_FILE=%s",
    stash_index_path.buf);

 res = run_command(&cp);
 remove_path(stash_index_path.buf);
 return res;
}
