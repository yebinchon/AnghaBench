
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int dummy; } ;


 int CLOSE_STAYDOWN ;
 int LogPHASE ;
 int bundle_Close (struct bundle*,int *,int ) ;
 int bundle_StopIdleTimer (struct bundle*) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static void
bundle_IdleTimeout(void *v)
{
  struct bundle *bundle = (struct bundle *)v;

  log_Printf(LogPHASE, "Idle timer expired\n");
  bundle_StopIdleTimer(bundle);
  bundle_Close(bundle, ((void*)0), CLOSE_STAYDOWN);
}
