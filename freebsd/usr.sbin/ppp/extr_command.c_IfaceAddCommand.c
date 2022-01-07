
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct cmdargs {int argc; int argn; TYPE_2__* bundle; TYPE_1__* cmd; int * argv; } ;
struct TYPE_4__ {int ncp; int iface; } ;
struct TYPE_3__ {scalar_t__ args; } ;


 scalar_t__ AF_INET ;
 int IFACE_ADD_LAST ;
 int IFACE_FORCE_ADD ;
 int LogWARN ;
 int iface_Add (int ,int *,struct ncprange*,struct ncpaddr*,int) ;
 int log_Printf (int ,char*) ;
 int ncpaddr_aton (struct ncpaddr*,int *,int ) ;
 scalar_t__ ncpaddr_family (struct ncpaddr*) ;
 int ncpaddr_getip4 (struct ncpaddr*,struct in_addr*) ;
 int ncpaddr_init (struct ncpaddr*) ;
 int ncprange_aton (struct ncprange*,int *,int ) ;
 scalar_t__ ncprange_family (struct ncprange*) ;
 int ncprange_sethost (struct ncprange*,struct ncpaddr*) ;
 int ncprange_setip4mask (struct ncprange*,struct in_addr) ;

__attribute__((used)) static int
IfaceAddCommand(struct cmdargs const *arg)
{
  struct ncpaddr peer, addr;
  struct ncprange ifa;
  struct in_addr mask;
  int n, how;

  if (arg->argc == arg->argn + 1) {
    if (!ncprange_aton(&ifa, ((void*)0), arg->argv[arg->argn]))
      return -1;
    ncpaddr_init(&peer);
  } else {
    if (arg->argc == arg->argn + 2) {
      if (!ncprange_aton(&ifa, ((void*)0), arg->argv[arg->argn]))
        return -1;
      n = 1;
    } else if (arg->argc == arg->argn + 3) {
      if (!ncpaddr_aton(&addr, ((void*)0), arg->argv[arg->argn]))
        return -1;
      if (ncpaddr_family(&addr) != AF_INET)
        return -1;
      ncprange_sethost(&ifa, &addr);
      if (!ncpaddr_aton(&addr, ((void*)0), arg->argv[arg->argn + 1]))
        return -1;
      if (!ncpaddr_getip4(&addr, &mask))
        return -1;
      if (!ncprange_setip4mask(&ifa, mask))
        return -1;
      n = 2;
    } else
      return -1;

    if (!ncpaddr_aton(&peer, ((void*)0), arg->argv[arg->argn + n]))
      return -1;

    if (ncprange_family(&ifa) != ncpaddr_family(&peer)) {
      log_Printf(LogWARN, "IfaceAddCommand: src and dst address families"
                 " differ\n");
      return -1;
    }
  }

  how = IFACE_ADD_LAST;
  if (arg->cmd->args)
    how |= IFACE_FORCE_ADD;

  return !iface_Add(arg->bundle->iface, &arg->bundle->ncp, &ifa, &peer, how);
}
