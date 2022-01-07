
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int mingw_spawnv (char const*,char const**,int ) ;
 int trace2_exec (char const*,char const**) ;
 int trace2_exec_result (int,int) ;
 int try_shell_exec (char const*,char* const*) ;
 scalar_t__ waitpid (int,int*,int ) ;

int mingw_execv(const char *cmd, char *const *argv)
{

 if (!try_shell_exec(cmd, argv)) {
  int pid, status;
  int exec_id;

  exec_id = trace2_exec(cmd, (const char **)argv);
  pid = mingw_spawnv(cmd, (const char **)argv, 0);
  if (pid < 0) {
   trace2_exec_result(exec_id, -1);
   return -1;
  }
  if (waitpid(pid, &status, 0) < 0)
   status = 255;
  trace2_exec_result(exec_id, status);
  exit(status);
 }
 return -1;
}
