
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ncprange {int dummy; } ;
struct cmdargs {int argc; int argn; TYPE_5__* bundle; TYPE_4__* cmd; int * argv; } ;
struct TYPE_9__ {int * dns; } ;
struct TYPE_10__ {TYPE_2__ ns; int peer_ip; int my_ip; } ;
struct TYPE_8__ {int hisaddr; int myaddr; } ;
struct TYPE_13__ {int route; TYPE_3__ ipcp; TYPE_1__ ipv6cp; } ;
struct TYPE_12__ {TYPE_7__ ncp; } ;
struct TYPE_11__ {scalar_t__ args; } ;


 int ROUTE_DSTDNS0 ;
 int ROUTE_DSTDNS1 ;
 int ROUTE_DSTHISADDR ;
 int ROUTE_DSTHISADDR6 ;
 int ROUTE_DSTMYADDR ;
 int ROUTE_DSTMYADDR6 ;
 int ROUTE_STATIC ;
 int RTM_DELETE ;
 int ncprange_aton (struct ncprange*,TYPE_7__*,int ) ;
 int ncprange_sethost (struct ncprange*,int *) ;
 int ncprange_setip4host (struct ncprange*,int ) ;
 int route_Delete (int *,int,struct ncprange*) ;
 int route_DeleteAll (int *) ;
 int route_IfDelete (TYPE_5__*,int ) ;
 int rt_Set (TYPE_5__*,int ,struct ncprange*,int *,int,int ) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int
DeleteCommand(struct cmdargs const *arg)
{
  struct ncprange dest;
  int addrs;

  if (arg->argc == arg->argn+1) {
    if(strcasecmp(arg->argv[arg->argn], "all") == 0) {
      route_IfDelete(arg->bundle, 0);
      route_DeleteAll(&arg->bundle->ncp.route);
    } else {
      addrs = 0;
      if (strcasecmp(arg->argv[arg->argn], "MYADDR") == 0) {
        ncprange_setip4host(&dest, arg->bundle->ncp.ipcp.my_ip);
        addrs = ROUTE_DSTMYADDR;

      } else if (strcasecmp(arg->argv[arg->argn], "MYADDR6") == 0) {
        ncprange_sethost(&dest, &arg->bundle->ncp.ipv6cp.myaddr);
        addrs = ROUTE_DSTMYADDR6;

      } else if (strcasecmp(arg->argv[arg->argn], "HISADDR") == 0) {
        ncprange_setip4host(&dest, arg->bundle->ncp.ipcp.peer_ip);
        addrs = ROUTE_DSTHISADDR;

      } else if (strcasecmp(arg->argv[arg->argn], "HISADDR6") == 0) {
        ncprange_sethost(&dest, &arg->bundle->ncp.ipv6cp.hisaddr);
        addrs = ROUTE_DSTHISADDR6;

      } else if (strcasecmp(arg->argv[arg->argn], "DNS0") == 0) {
        ncprange_setip4host(&dest, arg->bundle->ncp.ipcp.ns.dns[0]);
        addrs = ROUTE_DSTDNS0;
      } else if (strcasecmp(arg->argv[arg->argn], "DNS1") == 0) {
        ncprange_setip4host(&dest, arg->bundle->ncp.ipcp.ns.dns[1]);
        addrs = ROUTE_DSTDNS1;
      } else {
        ncprange_aton(&dest, &arg->bundle->ncp, arg->argv[arg->argn]);
        addrs = ROUTE_STATIC;
      }
      rt_Set(arg->bundle, RTM_DELETE, &dest, ((void*)0), arg->cmd->args ? 1 : 0, 0);
      route_Delete(&arg->bundle->ncp.route, addrs, &dest);
    }
  } else
    return -1;

  return 0;
}
