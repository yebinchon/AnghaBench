
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {int argc; int argn; TYPE_1__* bundle; int * argv; TYPE_2__* cmd; } ;
struct TYPE_4__ {scalar_t__ args; } ;
struct TYPE_3__ {scalar_t__ NatEnabled; } ;


 int LibAliasSetMode (int ,long,long) ;
 int LogWARN ;
 int la ;
 int log_Printf (int ,char*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
NatOption(struct cmdargs const *arg)
{
  long param = (long)arg->cmd->args;

  if (arg->argc == arg->argn+1) {
    if (strcasecmp(arg->argv[arg->argn], "yes") == 0) {
      if (arg->bundle->NatEnabled) {
 LibAliasSetMode(la, param, param);
 return 0;
      }
      log_Printf(LogWARN, "nat not enabled\n");
    } else if (strcmp(arg->argv[arg->argn], "no") == 0) {
      if (arg->bundle->NatEnabled) {
 LibAliasSetMode(la, 0, param);
 return 0;
      }
      log_Printf(LogWARN, "nat not enabled\n");
    }
  }
  return -1;
}
