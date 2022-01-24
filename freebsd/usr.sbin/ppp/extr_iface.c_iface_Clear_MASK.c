#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ncp {int dummy; } ;
struct iface {int addrs; TYPE_1__* addr; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  system; int /*<<< orphan*/  ifa; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFACE_CLEAR_ALL ; 
 int IFACE_SYSTEM ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp*,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct iface *iface, struct ncp *ncp, int family, int how)
{
  int af, inskip, in6skip, s4 = -1, s6 = -1, *s;
  unsigned n;

  if (iface->addrs) {
    inskip = in6skip = how == IFACE_CLEAR_ALL ? 0 : 1;

    for (n = 0; n < iface->addrs; n++) {
      af = FUNC6(&iface->addr[n].ifa);
      if (family == 0 || family == af) {
        if (!iface->addr[n].system && (how & IFACE_SYSTEM))
          continue;
        switch (af) {
        case AF_INET:
          if (inskip) {
            inskip = 0;
            continue;
          }
          s = &s4;
          break;

#ifndef NOINET6
        case AF_INET6:
          if (in6skip) {
            in6skip = 0;
            continue;
          }
          s = &s6;
          break;
#endif
        default:
          continue;
        }

        if (*s == -1 && (*s = FUNC0(af, SOCK_DGRAM, 0)) == -1)
          FUNC4(LogERROR, "iface_Clear: socket(): %s\n", FUNC7(errno));
        else if (FUNC3(iface->name, iface->addr + n, *s)) {
          FUNC5(ncp, iface->addr + n);
          FUNC1(iface->addr + n + 1, iface->addr + n,
                (iface->addrs - n - 1) * sizeof *iface->addr);
          iface->addrs--;
          n--;
        }
      }
    }

    /* Don't bother realloc()ing - we have little to gain */

    if (s4)
      FUNC2(s4);
    if (s6)
      FUNC2(s6);
  }
}