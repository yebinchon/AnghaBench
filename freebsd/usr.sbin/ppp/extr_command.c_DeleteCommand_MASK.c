#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ncprange {int dummy; } ;
struct cmdargs {int argc; int argn; TYPE_5__* bundle; TYPE_4__* cmd; int /*<<< orphan*/ * argv; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dns; } ;
struct TYPE_10__ {TYPE_2__ ns; int /*<<< orphan*/  peer_ip; int /*<<< orphan*/  my_ip; } ;
struct TYPE_8__ {int /*<<< orphan*/  hisaddr; int /*<<< orphan*/  myaddr; } ;
struct TYPE_13__ {int /*<<< orphan*/  route; TYPE_3__ ipcp; TYPE_1__ ipv6cp; } ;
struct TYPE_12__ {TYPE_7__ ncp; } ;
struct TYPE_11__ {scalar_t__ args; } ;

/* Variables and functions */
 int ROUTE_DSTDNS0 ; 
 int ROUTE_DSTDNS1 ; 
 int ROUTE_DSTHISADDR ; 
 int ROUTE_DSTHISADDR6 ; 
 int ROUTE_DSTMYADDR ; 
 int ROUTE_DSTMYADDR6 ; 
 int ROUTE_STATIC ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct ncprange*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncprange*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ncprange*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct ncprange*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,struct ncprange*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct cmdargs const *arg)
{
  struct ncprange dest;
  int addrs;

  if (arg->argc == arg->argn+1) {
    if(FUNC7(arg->argv[arg->argn], "all") == 0) {
      FUNC5(arg->bundle, 0);
      FUNC4(&arg->bundle->ncp.route);
    } else {
      addrs = 0;
      if (FUNC7(arg->argv[arg->argn], "MYADDR") == 0) {
        FUNC2(&dest, arg->bundle->ncp.ipcp.my_ip);
        addrs = ROUTE_DSTMYADDR;
#ifndef NOINET6
      } else if (FUNC7(arg->argv[arg->argn], "MYADDR6") == 0) {
        FUNC1(&dest, &arg->bundle->ncp.ipv6cp.myaddr);
        addrs = ROUTE_DSTMYADDR6;
#endif
      } else if (FUNC7(arg->argv[arg->argn], "HISADDR") == 0) {
        FUNC2(&dest, arg->bundle->ncp.ipcp.peer_ip);
        addrs = ROUTE_DSTHISADDR;
#ifndef NOINET6
      } else if (FUNC7(arg->argv[arg->argn], "HISADDR6") == 0) {
        FUNC1(&dest, &arg->bundle->ncp.ipv6cp.hisaddr);
        addrs = ROUTE_DSTHISADDR6;
#endif
      } else if (FUNC7(arg->argv[arg->argn], "DNS0") == 0) {
        FUNC2(&dest, arg->bundle->ncp.ipcp.ns.dns[0]);
        addrs = ROUTE_DSTDNS0;
      } else if (FUNC7(arg->argv[arg->argn], "DNS1") == 0) {
        FUNC2(&dest, arg->bundle->ncp.ipcp.ns.dns[1]);
        addrs = ROUTE_DSTDNS1;
      } else {
        FUNC0(&dest, &arg->bundle->ncp, arg->argv[arg->argn]);
        addrs = ROUTE_STATIC;
      }
      FUNC6(arg->bundle, RTM_DELETE, &dest, NULL, arg->cmd->args ? 1 : 0, 0);
      FUNC3(&arg->bundle->ncp.route, addrs, &dest);
    }
  } else
    return -1;

  return 0;
}