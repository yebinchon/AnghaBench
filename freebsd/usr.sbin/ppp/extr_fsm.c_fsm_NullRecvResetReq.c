
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {TYPE_1__* link; int LogLevel; } ;
struct TYPE_2__ {int name; } ;


 int log_Printf (int ,char*,int ) ;

int
fsm_NullRecvResetReq(struct fsm *fp)
{
  log_Printf(fp->LogLevel, "%s: Oops - received unexpected reset req\n",
            fp->link->name);
  return 1;
}
