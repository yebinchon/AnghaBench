#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct in6_addr {int dummy; } ;
struct cmdargs {int argc; int argn; TYPE_5__* bundle; TYPE_1__* cmd; int /*<<< orphan*/ * argv; } ;
struct TYPE_11__ {int /*<<< orphan*/  hisaddr; } ;
struct TYPE_9__ {struct in_addr* dns; } ;
struct TYPE_10__ {struct in_addr peer_ip; TYPE_2__ ns; struct in_addr my_ip; } ;
struct TYPE_13__ {int /*<<< orphan*/  route; TYPE_4__ ipv6cp; TYPE_3__ ipcp; } ;
struct TYPE_12__ {TYPE_6__ ncp; } ;
struct TYPE_8__ {scalar_t__ args; } ;

/* Variables and functions */
 struct in_addr FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogWARN ; 
 int ROUTE_DSTDNS0 ; 
 int ROUTE_DSTDNS1 ; 
 int ROUTE_DSTHISADDR ; 
 int ROUTE_DSTHISADDR6 ; 
 int ROUTE_DSTMYADDR ; 
 int ROUTE_DSTMYADDR6 ; 
 int ROUTE_GWHISADDR ; 
 int ROUTE_GWHISADDR6 ; 
 int ROUTE_STATIC ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncpaddr*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncpaddr*,struct in_addr) ; 
 int /*<<< orphan*/  FUNC7 (struct ncpaddr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncprange*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ncprange*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ncprange*,struct in_addr,struct in_addr) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,struct ncprange*,struct ncpaddr*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,struct ncprange*,struct ncpaddr*,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC15(struct cmdargs const *arg)
{
  struct ncpaddr gw;
  struct ncprange dest;
  struct in_addr host;
#ifndef NOINET6
  struct in6_addr host6;
#endif
  int dest_default, gw_arg, addrs;

  if (arg->argc != arg->argn+3 && arg->argc != arg->argn+2)
    return -1;

  addrs = 0;
  dest_default = 0;
  if (arg->argc == arg->argn + 2) {
    if (!FUNC13(arg->argv[arg->argn], "default"))
      dest_default = 1;
    else {
      if (!FUNC8(&dest, &arg->bundle->ncp, arg->argv[arg->argn]))
        return -1;
      if (!FUNC14(arg->argv[arg->argn], "MYADDR", 6))
        addrs = ROUTE_DSTMYADDR;
      else if (!FUNC14(arg->argv[arg->argn], "MYADDR6", 7))
        addrs = ROUTE_DSTMYADDR6;
      else if (!FUNC14(arg->argv[arg->argn], "HISADDR", 7))
        addrs = ROUTE_DSTHISADDR;
      else if (!FUNC14(arg->argv[arg->argn], "HISADDR6", 8))
        addrs = ROUTE_DSTHISADDR6;
      else if (!FUNC14(arg->argv[arg->argn], "DNS0", 4))
        addrs = ROUTE_DSTDNS0;
      else if (!FUNC14(arg->argv[arg->argn], "DNS1", 4))
        addrs = ROUTE_DSTDNS1;
    }
    gw_arg = 1;
  } else {
    if (FUNC13(arg->argv[arg->argn], "MYADDR") == 0) {
      addrs = ROUTE_DSTMYADDR;
      host = arg->bundle->ncp.ipcp.my_ip;
    } else if (FUNC13(arg->argv[arg->argn], "HISADDR") == 0) {
      addrs = ROUTE_DSTHISADDR;
      host = arg->bundle->ncp.ipcp.peer_ip;
    } else if (FUNC13(arg->argv[arg->argn], "DNS0") == 0) {
      addrs = ROUTE_DSTDNS0;
      host = arg->bundle->ncp.ipcp.ns.dns[0];
    } else if (FUNC13(arg->argv[arg->argn], "DNS1") == 0) {
      addrs = ROUTE_DSTDNS1;
      host = arg->bundle->ncp.ipcp.ns.dns[1];
    } else {
      host = FUNC0(arg->argv[arg->argn]);
      if (host.s_addr == INADDR_NONE) {
        FUNC1(LogWARN, "%s: Invalid destination address\n",
                   arg->argv[arg->argn]);
        return -1;
      }
    }
    FUNC10(&dest, host, FUNC0(arg->argv[arg->argn + 1]));
    gw_arg = 2;
  }

  if (FUNC13(arg->argv[arg->argn + gw_arg], "HISADDR") == 0) {
    FUNC6(&gw, arg->bundle->ncp.ipcp.peer_ip);
    addrs |= ROUTE_GWHISADDR;
#ifndef NOINET6
  } else if (FUNC13(arg->argv[arg->argn + gw_arg], "HISADDR6") == 0) {
    if (!FUNC5(&arg->bundle->ncp.ipv6cp.hisaddr, &host6))
      FUNC2(&host6, '\0', sizeof host6);
    FUNC7(&gw, &host6);
    addrs |= ROUTE_GWHISADDR6;
#endif
  } else {
    if (!FUNC3(&gw, &arg->bundle->ncp, arg->argv[arg->argn + gw_arg])) {
      FUNC1(LogWARN, "%s: Invalid gateway address\n",
                 arg->argv[arg->argn + gw_arg]);
      return -1;
    }
  }

  if (dest_default)
    FUNC9(&dest, FUNC4(&gw));

  if (FUNC12(arg->bundle, RTM_ADD, &dest, &gw, arg->cmd->args ? 1 : 0,
             ((addrs & ROUTE_GWHISADDR) || (addrs & ROUTE_GWHISADDR6)) ? 1 : 0)
      && addrs != ROUTE_STATIC)
    FUNC11(&arg->bundle->ncp.route, addrs, &dest, &gw);

  return 0;
}