
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _exit (int) ;
 scalar_t__ errno ;
 int execl (char const*,char*,char*,char const*,char const*,...) ;
 int fork () ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static int
install_pkg_static(const char *path, const char *pkgpath, bool force)
{
 int pstat;
 pid_t pid;

 switch ((pid = fork())) {
 case -1:
  return (-1);
 case 0:
  if (force)
   execl(path, "pkg-static", "add", "-f", pkgpath,
       (char *)((void*)0));
  else
   execl(path, "pkg-static", "add", pkgpath,
       (char *)((void*)0));
  _exit(1);
 default:
  break;
 }

 while (waitpid(pid, &pstat, 0) == -1)
  if (errno != EINTR)
   return (-1);

 if (WEXITSTATUS(pstat))
  return (WEXITSTATUS(pstat));
 else if (WIFSIGNALED(pstat))
  return (128 & (WTERMSIG(pstat)));
 return (pstat);
}
