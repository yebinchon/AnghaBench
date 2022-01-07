
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BGPid ;
 int LogPHASE ;
 int SIGINT ;
 int SIG_IGN ;
 int kill (int ,int ) ;
 int log_Printf (int ,char*,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
KillChild(int signo)
{
  signal(signo, SIG_IGN);
  log_Printf(LogPHASE, "Parent: Signal %d\n", signo);
  kill(BGPid, SIGINT);
}
