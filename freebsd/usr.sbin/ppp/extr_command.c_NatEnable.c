
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmdargs {int argc; int argn; TYPE_4__* bundle; int * argv; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {int my_ip; TYPE_1__ fsm; } ;
struct TYPE_7__ {TYPE_2__ ipcp; } ;
struct TYPE_8__ {int NatEnabled; TYPE_3__ ncp; } ;


 int LibAliasSetAddress (int ,int ) ;
 int OPT_IFACEALIAS ;
 scalar_t__ ST_OPENED ;
 int la ;
 int opt_disable (TYPE_4__*,int ) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int
NatEnable(struct cmdargs const *arg)
{
  if (arg->argc == arg->argn+1) {
    if (strcasecmp(arg->argv[arg->argn], "yes") == 0) {
      if (!arg->bundle->NatEnabled) {
        if (arg->bundle->ncp.ipcp.fsm.state == ST_OPENED)
          LibAliasSetAddress(la, arg->bundle->ncp.ipcp.my_ip);
        arg->bundle->NatEnabled = 1;
      }
      return 0;
    } else if (strcasecmp(arg->argv[arg->argn], "no") == 0) {
      arg->bundle->NatEnabled = 0;
      opt_disable(arg->bundle, OPT_IFACEALIAS);

      return 0;
    }
  }

  return -1;
}
