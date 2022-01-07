
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cleanup () ;
 int LogPHASE ;
 int log_Printf (int ,char*,int) ;

__attribute__((used)) static void
CloseSession(int signo)
{
  log_Printf(LogPHASE, "Signal %d, terminate.\n", signo);
  Cleanup();
}
