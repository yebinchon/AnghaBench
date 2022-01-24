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
struct TYPE_6__ {TYPE_2__* bundle; } ;
struct ipv6cp {TYPE_3__ fsm; int /*<<< orphan*/  his_ifid; int /*<<< orphan*/  my_ifid; } ;
struct TYPE_5__ {TYPE_1__* iface; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6cp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC3(struct ipv6cp *ipv6cp)
{
  if (!FUNC1(ipv6cp, ipv6cp->my_ifid, ipv6cp->his_ifid)) {
    FUNC2(LogERROR, "ipv6cp_InterfaceUp: unable to set ipv6 address\n");
    return 0;
  }

  if (!FUNC0(ipv6cp->fsm.bundle->iface->name, IFF_UP)) {
    FUNC2(LogERROR, "ipv6cp_InterfaceUp: Can't set the IFF_UP"
               " flag on %s\n", ipv6cp->fsm.bundle->iface->name);
    return 0;
  }

  return 1;
}