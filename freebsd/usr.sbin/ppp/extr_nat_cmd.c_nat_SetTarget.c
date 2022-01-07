
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct cmdargs {int argc; int argn; int * argv; } ;


 struct in_addr GetIpAddr (int ) ;
 void* INADDR_ANY ;
 scalar_t__ INADDR_NONE ;
 int LibAliasSetTarget (int ,struct in_addr) ;
 int LogWARN ;
 int la ;
 int log_Printf (int ,char*,int ) ;
 int strcasecmp (int ,char*) ;

int
nat_SetTarget(struct cmdargs const *arg)
{
  struct in_addr addr;

  if (arg->argc == arg->argn) {
    addr.s_addr = INADDR_ANY;
    LibAliasSetTarget(la, addr);
    return 0;
  }

  if (arg->argc != arg->argn + 1)
    return -1;

  if (!strcasecmp(arg->argv[arg->argn], "MYADDR")) {
    addr.s_addr = INADDR_ANY;
    LibAliasSetTarget(la, addr);
    return 0;
  }

  addr = GetIpAddr(arg->argv[arg->argn]);
  if (addr.s_addr == INADDR_NONE) {
    log_Printf(LogWARN, "%s: invalid address\n", arg->argv[arg->argn]);
    return 1;
  }

  LibAliasSetTarget(la, addr);
  return 0;
}
