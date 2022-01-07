
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_numchild; scalar_t__* se_pids; scalar_t__ se_maxchild; int se_server; struct servtab* se_next; } ;
struct rusage {int dummy; } ;
typedef scalar_t__ pid_t ;


 int LOG_WARNING ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 scalar_t__ WTERMSIG (int) ;
 scalar_t__ debug ;
 int enable (struct servtab*) ;
 int reapchild_conn (scalar_t__) ;
 struct servtab* servtab ;
 int syslog (int ,char*,int ,scalar_t__,char*,scalar_t__) ;
 scalar_t__ wait3 (int*,int ,struct rusage*) ;
 int warnx (char*,scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static void
reapchild(void)
{
 int k, status;
 pid_t pid;
 struct servtab *sep;

 for (;;) {
  pid = wait3(&status, WNOHANG, (struct rusage *)0);
  if (pid <= 0)
   break;
  if (debug)
   warnx("%d reaped, %s %u", pid,
       WIFEXITED(status) ? "status" : "signal",
       WIFEXITED(status) ? WEXITSTATUS(status)
    : WTERMSIG(status));
  for (sep = servtab; sep; sep = sep->se_next) {
   for (k = 0; k < sep->se_numchild; k++)
    if (sep->se_pids[k] == pid)
     break;
   if (k == sep->se_numchild)
    continue;
   if (sep->se_numchild == sep->se_maxchild)
    enable(sep);
   sep->se_pids[k] = sep->se_pids[--sep->se_numchild];
   if (WIFSIGNALED(status) || WEXITSTATUS(status))
    syslog(LOG_WARNING,
        "%s[%d]: exited, %s %u",
        sep->se_server, pid,
        WIFEXITED(status) ? "status" : "signal",
        WIFEXITED(status) ? WEXITSTATUS(status)
     : WTERMSIG(status));
   break;
  }
  reapchild_conn(pid);
 }
}
