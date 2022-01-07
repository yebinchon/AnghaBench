
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOSE_STAYDOWN ;
 int LogPHASE ;
 scalar_t__ SignalBundle ;
 int bundle_Close (scalar_t__,int *,int ) ;
 int bundle_Destroy (scalar_t__) ;
 int ex_desc (int) ;
 int exit (int) ;
 int log_Close () ;
 int log_Printf (int ,char*,int ) ;
 int server_Close (scalar_t__) ;

void
AbortProgram(int excode)
{
  if (SignalBundle)
    server_Close(SignalBundle);
  log_Printf(LogPHASE, "PPP Terminated (%s).\n", ex_desc(excode));
  if (SignalBundle) {
    bundle_Close(SignalBundle, ((void*)0), CLOSE_STAYDOWN);
    bundle_Destroy(SignalBundle);
  }
  log_Close();
  exit(excode);
}
