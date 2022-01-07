
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {int argn; int bundle; int * argv; TYPE_1__* cmd; } ;
struct TYPE_4__ {int ipv6_available; } ;
struct TYPE_3__ {scalar_t__ args; } ;


 int Enabled (int ,int) ;
 int LogWARN ;
 unsigned int NEG_ENABLED ;
 int OPT_IPV6CP ;
 int OPT_NAS_IDENTIFIER ;
 int OPT_NAS_IP_ADDRESS ;
 int * ident_cmd (int ,unsigned int*,unsigned int*) ;
 int log_Printf (int ,char*) ;
 int opt_disable (int ,int) ;
 int opt_enable (int ,int) ;
 TYPE_2__ probe ;

__attribute__((used)) static int
OptSet(struct cmdargs const *arg)
{
  int opt = (int)(long)arg->cmd->args;
  unsigned keep;
  unsigned add;

  if (ident_cmd(arg->argv[arg->argn - 2], &keep, &add) == ((void*)0))
    return 1;


  if (add == NEG_ENABLED && opt == OPT_IPV6CP && !probe.ipv6_available) {
    log_Printf(LogWARN, "IPv6 is not available on this machine\n");
    return 1;
  }

  if (!add && ((opt == OPT_NAS_IP_ADDRESS &&
                !Enabled(arg->bundle, OPT_NAS_IDENTIFIER)) ||
               (opt == OPT_NAS_IDENTIFIER &&
                !Enabled(arg->bundle, OPT_NAS_IP_ADDRESS)))) {
    log_Printf(LogWARN,
               "Cannot disable both NAS-IP-Address and NAS-Identifier\n");
    return 1;
  }

  if (add)
    opt_enable(arg->bundle, opt);
  else
    opt_disable(arg->bundle, opt);

  return 0;
}
