
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOSE_STAYDOWN ;
 int LogPHASE ;
 int SIGINT ;
 void SIG_IGN (int) ;
 int SignalBundle ;
 int bundle_Down (int ,int ) ;
 int log_Printf (int ,char*,int) ;
 int sig_signal (int ,void (*) (int)) ;

__attribute__((used)) static void
CloseConnection(int signo)
{

  sig_signal(SIGINT, SIG_IGN);
  log_Printf(LogPHASE, "Caught signal %d, abort connection(s)\n", signo);
  bundle_Down(SignalBundle, CLOSE_STAYDOWN);
  sig_signal(SIGINT, CloseConnection);
}
