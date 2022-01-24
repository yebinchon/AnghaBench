#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_8__ {int /*<<< orphan*/ * port; scalar_t__ maxports; scalar_t__ nports; } ;
struct TYPE_7__ {int nports; int maxports; int /*<<< orphan*/ * port; } ;
struct TYPE_9__ {int tos; TYPE_2__ udp; TYPE_1__ tcp; } ;
struct TYPE_10__ {TYPE_3__ urgent; } ;
struct ncp {int /*<<< orphan*/  ipv6cp; int /*<<< orphan*/  ipcp; int /*<<< orphan*/  mp; TYPE_4__ cfg; int /*<<< orphan*/ * route; int /*<<< orphan*/  afq; } ;
struct bundle {int /*<<< orphan*/  fsm; TYPE_6__* links; } ;
struct TYPE_12__ {TYPE_5__* physical; } ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  LogERROR ; 
 int NDEFTCPPORTS ; 
 int /*<<< orphan*/  default_urgent_tcp_ports ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bundle*) ; 

void
FUNC6(struct ncp *ncp, struct bundle *bundle)
{
  ncp->afq = AF_INET;
  ncp->route = NULL;

  ncp->cfg.urgent.tcp.port = (u_short *)FUNC3(NDEFTCPPORTS * sizeof(u_short));
  if (ncp->cfg.urgent.tcp.port == NULL) {
    FUNC2(LogERROR, "ncp_Init: Out of memory allocating urgent ports\n");
    ncp->cfg.urgent.tcp.nports = ncp->cfg.urgent.tcp.maxports = 0;
  } else {
    ncp->cfg.urgent.tcp.nports = ncp->cfg.urgent.tcp.maxports = NDEFTCPPORTS;
    FUNC4(ncp->cfg.urgent.tcp.port, default_urgent_tcp_ports,
	   NDEFTCPPORTS * sizeof(u_short));
  }
  ncp->cfg.urgent.tos = 1;

  ncp->cfg.urgent.udp.nports = ncp->cfg.urgent.udp.maxports = 0;
  ncp->cfg.urgent.udp.port = NULL;

  FUNC5(&ncp->mp, bundle);

  /* Send over the first physical link by default */
  FUNC0(&ncp->ipcp, bundle, &bundle->links->physical->link,
            &bundle->fsm);
#ifndef NOINET6
  FUNC1(&ncp->ipv6cp, bundle, &bundle->links->physical->link,
              &bundle->fsm);
#endif
}