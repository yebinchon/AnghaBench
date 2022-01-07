
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ ECHILD ;
 scalar_t__ ENOENT ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 scalar_t__ childerr ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ pids_full () ;
 int rval ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*,...) ;
 int xwait (int,int*) ;

__attribute__((used)) static void
waitchildren(const char *name, int waitall)
{
 pid_t pid;
 int status;
 int cause_exit = 0;

 while ((pid = xwait(waitall || pids_full(), &status)) > 0) {
  if (childerr != 0 && cause_exit == 0) {
   errno = childerr;
   waitall = 1;
   cause_exit = ENOENT ? 127 : 126;
   warn("%s", name);
  } else if (WIFSIGNALED(status)) {
   waitall = cause_exit = 1;
   warnx("%s: terminated with signal %d; aborting",
       name, WTERMSIG(status));
  } else if (WEXITSTATUS(status) == 255) {
   waitall = cause_exit = 1;
   warnx("%s: exited with status 255; aborting", name);
  } else if (WEXITSTATUS(status))
    rval = 1;
 }

  if (cause_exit)
  exit(cause_exit);
 if (pid == -1 && errno != ECHILD)
  err(1, "waitpid");
}
