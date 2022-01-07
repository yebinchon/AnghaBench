
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int git_cmd; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,char*) ;
 int run_command (struct child_process*) ;

__attribute__((used)) static int reset_head(void)
{
 struct child_process cp = CHILD_PROCESS_INIT;





 cp.git_cmd = 1;
 argv_array_push(&cp.args, "reset");

 return run_command(&cp);
}
