
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int stdout_to_stderr; char* trace2_hook_name; int in; int args; } ;
struct am_state {int dummy; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int O_RDONLY ;
 int am_path (struct am_state const*,char*) ;
 int argv_array_push (int *,char const*) ;
 int close (int ) ;
 char* find_hook (char*) ;
 int run_command (struct child_process*) ;
 int xopen (int ,int ) ;

__attribute__((used)) static int run_post_rewrite_hook(const struct am_state *state)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 const char *hook = find_hook("post-rewrite");
 int ret;

 if (!hook)
  return 0;

 argv_array_push(&cp.args, hook);
 argv_array_push(&cp.args, "rebase");

 cp.in = xopen(am_path(state, "rewritten"), O_RDONLY);
 cp.stdout_to_stderr = 1;
 cp.trace2_hook_name = "post-rewrite";

 ret = run_command(&cp);

 close(cp.in);
 return ret;
}
