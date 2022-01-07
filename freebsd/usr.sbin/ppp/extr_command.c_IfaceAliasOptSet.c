
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {TYPE_2__* bundle; } ;
struct TYPE_3__ {unsigned long long optmask; } ;
struct TYPE_4__ {TYPE_1__ cfg; int NatEnabled; } ;


 scalar_t__ Enabled (TYPE_2__*,int ) ;
 int LogWARN ;
 int OPT_IFACEALIAS ;
 int OptSet (struct cmdargs const*) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
IfaceAliasOptSet(struct cmdargs const *arg)
{
  unsigned long long save = arg->bundle->cfg.optmask;
  int result = OptSet(arg);

  if (result == 0)
    if (Enabled(arg->bundle, OPT_IFACEALIAS) && !arg->bundle->NatEnabled) {
      arg->bundle->cfg.optmask = save;
      log_Printf(LogWARN, "Cannot enable iface-alias without NAT\n");
      result = 2;
    }

  return result;
}
