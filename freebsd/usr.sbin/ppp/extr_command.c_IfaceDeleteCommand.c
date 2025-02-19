
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ncpaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct cmdargs {int argc; int argn; scalar_t__ prompt; TYPE_5__* cmd; TYPE_4__* bundle; int * argv; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_2__ my_ip; TYPE_1__ fsm; } ;
struct TYPE_12__ {TYPE_3__ ipcp; } ;
struct TYPE_11__ {scalar_t__ args; } ;
struct TYPE_10__ {TYPE_6__ ncp; int iface; } ;


 int LogWARN ;
 scalar_t__ ST_OPENED ;
 int iface_Delete (int ,TYPE_6__*,struct ncpaddr*) ;
 int log_Printf (int ,char*,int ) ;
 int ncpaddr_aton (struct ncpaddr*,int *,int ) ;
 scalar_t__ ncpaddr_getip4 (struct ncpaddr*,struct in_addr*) ;
 int ncpaddr_ntoa (struct ncpaddr*) ;
 int prompt_Printf (scalar_t__,char*,int ) ;

__attribute__((used)) static int
IfaceDeleteCommand(struct cmdargs const *arg)
{
  struct ncpaddr ifa;
  struct in_addr ifa4;
  int ok;

  if (arg->argc != arg->argn + 1)
    return -1;

  if (!ncpaddr_aton(&ifa, ((void*)0), arg->argv[arg->argn]))
    return -1;

  if (arg->bundle->ncp.ipcp.fsm.state == ST_OPENED &&
      ncpaddr_getip4(&ifa, &ifa4) &&
      arg->bundle->ncp.ipcp.my_ip.s_addr == ifa4.s_addr) {
    log_Printf(LogWARN, "%s: Cannot remove active interface address\n",
               ncpaddr_ntoa(&ifa));
    return 1;
  }

  ok = iface_Delete(arg->bundle->iface, &arg->bundle->ncp, &ifa);
  if (!ok) {
    if (arg->cmd->args)
      ok = 1;
    else if (arg->prompt)
      prompt_Printf(arg->prompt, "%s: No such interface address\n",
                    ncpaddr_ntoa(&ifa));
    else
      log_Printf(LogWARN, "%s: No such interface address\n",
                 ncpaddr_ntoa(&ifa));
  }

  return !ok;
}
