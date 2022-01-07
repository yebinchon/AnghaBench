
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int physical; int state; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;
typedef scalar_t__ pid_t ;


 int DATALINK_CLOSED ;
 int ID0realuid () ;
 int LogDEBUG ;
 int LogERROR ;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_DFL ;
 int SetTitle (char*) ;
 int _exit (int ) ;
 int bundle_ChangedPID (struct bundle*) ;
 scalar_t__ bundle_IsDead (struct bundle*) ;
 int bundle_LockTun (struct bundle*) ;
 int close (int) ;
 int errno ;
 scalar_t__ fork () ;
 int getdtablesize () ;
 scalar_t__ getpid () ;
 int log_Printf (int ,char*,long,...) ;
 int pause () ;
 int physical_ChangedPid (int ,scalar_t__) ;
 int pipe (int*) ;
 int read (int,char*,int) ;
 int setsid () ;
 int setuid (int ) ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 int timer_InitService (int ) ;
 int timer_TermService () ;
 int waitpid (scalar_t__,int*,int ) ;
 int write (int,char*,int) ;

void
bundle_setsid(struct bundle *bundle, int holdsession)
{





  pid_t pid, orig;
  int fds[2];
  char done;
  struct datalink *dl;

  if (!holdsession && bundle_IsDead(bundle)) {






    return;
  }

  orig = getpid();
  if (pipe(fds) == -1) {
    log_Printf(LogERROR, "pipe: %s\n", strerror(errno));
    return;
  }
  switch ((pid = fork())) {
    case -1:
      log_Printf(LogERROR, "fork: %s\n", strerror(errno));
      close(fds[0]);
      close(fds[1]);
      return;
    case 0:
      close(fds[1]);
      read(fds[0], &done, 1);
      close(fds[0]);
      if (pipe(fds) == -1) {
        log_Printf(LogERROR, "pipe(2): %s\n", strerror(errno));
        return;
      }
      switch ((pid = fork())) {
        case -1:
          log_Printf(LogERROR, "fork(2): %s\n", strerror(errno));
          close(fds[0]);
          close(fds[1]);
          return;
        case 0:
          close(fds[1]);
          bundle_LockTun(bundle);
          read(fds[0], &done, 1);
          close(fds[0]);
          setsid();
          bundle_ChangedPID(bundle);
          log_Printf(LogDEBUG, "%ld -> %ld: %s session control\n",
                     (long)orig, (long)getpid(),
                     holdsession ? "Passed" : "Dropped");
          timer_InitService(0);
          break;
        default:
          close(fds[0]);

          for (dl = bundle->links; dl; dl = dl->next)
            if (dl->state != DATALINK_CLOSED)
              physical_ChangedPid(dl->physical, pid);
          write(fds[1], "!", 1);
          close(fds[1]);
          _exit(0);
          break;
      }
      break;
    default:
      close(fds[0]);

      for (dl = bundle->links; dl; dl = dl->next)
        if (dl->state != DATALINK_CLOSED)
          physical_ChangedPid(dl->physical, pid);
      write(fds[1], "!", 1);
      close(fds[1]);
      if (holdsession) {
        int fd, status;

        timer_TermService();
        signal(SIGPIPE, SIG_DFL);
        signal(SIGALRM, SIG_DFL);
        signal(SIGHUP, SIG_DFL);
        signal(SIGTERM, SIG_DFL);
        signal(SIGINT, SIG_DFL);
        signal(SIGQUIT, SIG_DFL);
        for (fd = getdtablesize(); fd >= 0; fd--)
          close(fd);




        waitpid(pid, &status, 0);

        SetTitle("session owner");

        setuid(ID0realuid());
        pause();
      }
      _exit(0);
      break;
  }
}
