
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 scalar_t__ errno ;
 int logerror (char*) ;
 int snprintf (char*,int,char*,int,char const*,char const*,int) ;

__attribute__((used)) static void
log_deadchild(pid_t pid, int status, const char *name)
{
 int code;
 char buf[256];
 const char *reason;

 errno = 0;
 if (WIFSIGNALED(status)) {
  reason = "due to signal";
  code = WTERMSIG(status);
 } else {
  reason = "with status";
  code = WEXITSTATUS(status);
  if (code == 0)
   return;
 }
 (void)snprintf(buf, sizeof buf,
         "Logging subprocess %d (%s) exited %s %d.",
         pid, name, reason, code);
 logerror(buf);
}
