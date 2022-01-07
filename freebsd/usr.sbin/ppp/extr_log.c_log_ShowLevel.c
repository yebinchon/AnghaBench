
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdargs {TYPE_1__* prompt; } ;
struct TYPE_2__ {int logmask; } ;


 int LOG_KEPT_LOCAL ;
 int LOG_KEPT_SYSLOG ;
 int LogMAX ;
 int LogMIN ;
 int log_IsKept (int) ;
 int log_IsKeptLocal (int,int ) ;
 int log_Name (int) ;
 int prompt_Printf (TYPE_1__*,char*,...) ;

int
log_ShowLevel(struct cmdargs const *arg)
{
  int i;

  prompt_Printf(arg->prompt, "Log:  ");
  for (i = LogMIN; i <= LogMAX; i++)
    if (log_IsKept(i) & LOG_KEPT_SYSLOG)
      prompt_Printf(arg->prompt, " %s", log_Name(i));

  prompt_Printf(arg->prompt, "\nLocal:");
  for (i = LogMIN; i <= LogMAX; i++)
    if (log_IsKeptLocal(i, arg->prompt->logmask) & LOG_KEPT_LOCAL)
      prompt_Printf(arg->prompt, " %s", log_Name(i));

  prompt_Printf(arg->prompt, "\n");

  return 0;
}
