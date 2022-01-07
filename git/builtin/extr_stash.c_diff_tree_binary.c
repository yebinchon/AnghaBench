
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct child_process {int git_cmd; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_pushf (int *,char*,char const*,char const*) ;
 int argv_array_pushl (int *,char*,char*,int *) ;
 char* oid_to_hex (struct object_id*) ;
 int pipe_command (struct child_process*,int *,int ,struct strbuf*,int ,int *,int ) ;

__attribute__((used)) static int diff_tree_binary(struct strbuf *out, struct object_id *w_commit)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 const char *w_commit_hex = oid_to_hex(w_commit);





 cp.git_cmd = 1;
 argv_array_pushl(&cp.args, "diff-tree", "--binary", ((void*)0));
 argv_array_pushf(&cp.args, "%s^2^..%s^2", w_commit_hex, w_commit_hex);

 return pipe_command(&cp, ((void*)0), 0, out, 0, ((void*)0), 0);
}
