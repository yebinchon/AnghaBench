
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {int argc; int argn; int bundle; TYPE_1__* cx; int * argv; } ;
struct TYPE_4__ {int bandwidth; } ;
struct TYPE_3__ {scalar_t__ state; TYPE_2__ mp; } ;


 scalar_t__ DATALINK_OPEN ;
 int LogWARN ;
 int atoi (int ) ;
 int bundle_CalculateBandwidth (int ) ;
 int log_Printf (int ,char*) ;

int
mp_SetDatalinkBandwidth(struct cmdargs const *arg)
{
  int val;

  if (arg->argc != arg->argn+1)
    return -1;

  val = atoi(arg->argv[arg->argn]);
  if (val <= 0) {
    log_Printf(LogWARN, "The link bandwidth must be greater than zero\n");
    return 1;
  }
  arg->cx->mp.bandwidth = val;

  if (arg->cx->state == DATALINK_OPEN)
    bundle_CalculateBandwidth(arg->bundle);

  return 0;
}
