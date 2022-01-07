
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int dummy; } ;


 int CLOSE_STAYDOWN ;
 int LogPHASE ;
 int bundle_Close (struct bundle*,int *,int ) ;
 int bundle_StopSessionTimer (struct bundle*) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static void
bundle_SessionTimeout(void *v)
{
  struct bundle *bundle = (struct bundle *)v;

  log_Printf(LogPHASE, "Session-Timeout timer expired\n");
  bundle_StopSessionTimer(bundle);
  bundle_Close(bundle, ((void*)0), CLOSE_STAYDOWN);
}
