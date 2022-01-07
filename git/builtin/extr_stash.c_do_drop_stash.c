
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct stash_info {TYPE_1__ revision; int w_commit; } ;
struct child_process {int git_cmd; int no_stdout; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int _ (char*) ;
 int argv_array_push (int *,int ) ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,...) ;
 int do_clear_stash () ;
 int error (int ,int ) ;
 int oid_to_hex (int *) ;
 int printf_ln (int ,int ,int ) ;
 int ref_stash ;
 int run_command (struct child_process*) ;

__attribute__((used)) static int do_drop_stash(struct stash_info *info, int quiet)
{
 int ret;
 struct child_process cp_reflog = CHILD_PROCESS_INIT;
 struct child_process cp = CHILD_PROCESS_INIT;






 cp_reflog.git_cmd = 1;
 argv_array_pushl(&cp_reflog.args, "reflog", "delete", "--updateref",
    "--rewrite", ((void*)0));
 argv_array_push(&cp_reflog.args, info->revision.buf);
 ret = run_command(&cp_reflog);
 if (!ret) {
  if (!quiet)
   printf_ln(_("Dropped %s (%s)"), info->revision.buf,
      oid_to_hex(&info->w_commit));
 } else {
  return error(_("%s: Could not drop stash entry"),
        info->revision.buf);
 }





 cp.git_cmd = 1;

 cp.no_stdout = 1;
 argv_array_pushl(&cp.args, "rev-parse", "--verify", "--quiet", ((void*)0));
 argv_array_pushf(&cp.args, "%s@{0}", ref_stash);
 ret = run_command(&cp);


 if (ret)
  do_clear_stash();

 return 0;
}
