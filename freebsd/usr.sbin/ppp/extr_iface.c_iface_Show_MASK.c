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
struct ncpaddr {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct iface {int flags; int addrs; TYPE_2__* addr; int /*<<< orphan*/  mtu; int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;
struct cmdargs {int /*<<< orphan*/  prompt; TYPE_1__* bundle; } ;
struct TYPE_6__ {int flag; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifa; struct ncpaddr peer; } ;
struct TYPE_4__ {struct iface* iface; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  AF_UNSPEC ; 
 TYPE_3__* if_flags ; 
 struct iface* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ncpaddr*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC11(struct cmdargs const *arg)
{
  struct ncpaddr ncpaddr;
  struct iface *iface = arg->bundle->iface, *current;
  unsigned f;
  int flags;
#ifndef NOINET6
  int scopeid, width;
#endif
  struct in_addr mask;

  current = FUNC0(iface->name);
  flags = iface->flags = current->flags;
  FUNC1(current);

  FUNC10(arg->prompt, "%s (idx %d) <", iface->name, iface->index);
  for (f = 0; f < sizeof if_flags / sizeof if_flags[0]; f++)
    if ((if_flags[f].flag & flags)) {
      FUNC10(arg->prompt, "%s%s", flags == iface->flags ? "" : ",",
                    if_flags[f].value);
      flags &= ~if_flags[f].flag;
    }

#if 0
  if (flags)
    prompt_Printf(arg->prompt, "%s0x%x", flags == iface->flags ? "" : ",",
                  flags);
#endif

  FUNC10(arg->prompt, "> mtu %lu has %d address%s:\n", iface->mtu,
                iface->addrs, iface->addrs == 1 ? "" : "es");

  for (f = 0; f < iface->addrs; f++) {
    FUNC5(&iface->addr[f].ifa, &ncpaddr);
    switch (FUNC4(&iface->addr[f].ifa)) {
    case AF_INET:
      FUNC10(arg->prompt, "  inet %s --> ", FUNC3(&ncpaddr));
      if (FUNC2(&iface->addr[f].peer) == AF_UNSPEC)
        FUNC10(arg->prompt, "255.255.255.255");
      else
        FUNC10(arg->prompt, "%s", FUNC3(&iface->addr[f].peer));
      FUNC6(&iface->addr[f].ifa, &mask);
      FUNC10(arg->prompt, " netmask 0x%08lx", (long)FUNC9(mask.s_addr));
      break;

#ifndef NOINET6
    case AF_INET6:
      FUNC10(arg->prompt, "  inet6 %s", FUNC3(&ncpaddr));
      if (FUNC2(&iface->addr[f].peer) != AF_UNSPEC)
        FUNC10(arg->prompt, " --> %s",
                      FUNC3(&iface->addr[f].peer));
      FUNC7(&iface->addr[f].ifa, &width);
      if (FUNC2(&iface->addr[f].peer) == AF_UNSPEC)
        FUNC10(arg->prompt, " prefixlen %d", width);
      if ((scopeid = FUNC8(&iface->addr[f].ifa)) != -1)
        FUNC10(arg->prompt, " scopeid 0x%x", (unsigned)scopeid);
      break;
#endif
    }
    FUNC10(arg->prompt, "\n");
  }

  return 0;
}