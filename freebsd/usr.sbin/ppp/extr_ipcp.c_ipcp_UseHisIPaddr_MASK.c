#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  my_range; int /*<<< orphan*/  peer_range; int /*<<< orphan*/  peer_list; } ;
struct in_addr {int dummy; } ;
struct ipcp {TYPE_2__ cfg; struct in_addr peer_ip; } ;
struct TYPE_3__ {struct ipcp ipcp; } ;
struct bundle {TYPE_1__ ncp; } ;

/* Variables and functions */
 int FUNC0 (struct ipcp*,struct in_addr,struct in_addr) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct in_addr) ; 

int
FUNC5(struct bundle *bundle, struct in_addr hisaddr)
{
  struct ipcp *ipcp = &bundle->ncp.ipcp;
  struct in_addr myaddr;

  FUNC2(&ipcp->cfg.peer_range, '\0', sizeof ipcp->cfg.peer_range);
  FUNC1(&ipcp->cfg.peer_list);
  ipcp->peer_ip = hisaddr;
  FUNC4(&ipcp->cfg.peer_range, hisaddr);
  FUNC3(&ipcp->cfg.my_range, &myaddr);

  return FUNC0(ipcp, myaddr, hisaddr);
}