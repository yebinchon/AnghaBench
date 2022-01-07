
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* local; char* peer; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_5__ {int fd; TYPE_1__ buf; scalar_t__ pid; } ;
struct chap {scalar_t__ peertries; TYPE_3__ challenge; TYPE_2__ child; } ;


 int LogERROR ;
 int LogWARN ;
 int SIGTERM ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;
 int close (int) ;
 int errno ;
 int kill (scalar_t__,int ) ;
 int log_Printf (int ,char*,scalar_t__) ;
 scalar_t__ strerror (int ) ;
 int wait (int*) ;

__attribute__((used)) static void
chap_Cleanup(struct chap *chap, int sig)
{
  if (chap->child.pid) {
    int status;

    close(chap->child.fd);
    chap->child.fd = -1;
    if (sig)
      kill(chap->child.pid, SIGTERM);
    chap->child.pid = 0;
    chap->child.buf.len = 0;

    if (wait(&status) == -1)
      log_Printf(LogERROR, "Chap: wait: %s\n", strerror(errno));
    else if (WIFSIGNALED(status))
      log_Printf(LogWARN, "Chap: Child received signal %d\n", WTERMSIG(status));
    else if (WIFEXITED(status) && WEXITSTATUS(status))
      log_Printf(LogERROR, "Chap: Child exited %d\n", WEXITSTATUS(status));
  }
  *chap->challenge.local = *chap->challenge.peer = '\0';

  chap->peertries = 0;

}
