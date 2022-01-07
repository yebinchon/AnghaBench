
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int log_warnx (char*,char const*,...) ;
 scalar_t__ waitpid (int ,int*,int ) ;

int
check_child(pid_t pid, const char *pname)
{
 int status;

 if (waitpid(pid, &status, WNOHANG) > 0) {
  if (WIFEXITED(status)) {
   log_warnx("check_child: lost child %s exited", pname);
   return (1);
  }
  if (WIFSIGNALED(status)) {
   log_warnx("check_child: lost child %s terminated; "
       "signal %d", pname, WTERMSIG(status));
   return (1);
  }
 }
 return (0);
}
