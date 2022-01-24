#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* bundle; } ;
struct ipcp {int /*<<< orphan*/  my_ip; TYPE_2__ fsm; int /*<<< orphan*/  peer_ip; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ NatEnabled; TYPE_3__* iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipcp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  la ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC4(struct ipcp *ipcp)
{
  if (!FUNC2(ipcp, ipcp->my_ip, ipcp->peer_ip)) {
    FUNC3(LogERROR, "ipcp_InterfaceUp: unable to set ip address\n");
    return 0;
  }

  if (!FUNC1(ipcp->fsm.bundle->iface->name, IFF_UP)) {
    FUNC3(LogERROR, "ipcp_InterfaceUp: Can't set the IFF_UP flag on %s\n",
               ipcp->fsm.bundle->iface->name);
    return 0;
  }

#ifndef NONAT
  if (ipcp->fsm.bundle->NatEnabled)
    FUNC0(la, ipcp->my_ip);
#endif

  return 1;
}