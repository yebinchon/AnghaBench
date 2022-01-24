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
struct ncpaddr {int dummy; } ;
struct ncp {int dummy; } ;
struct iface {unsigned int addrs; TYPE_1__* addr; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifa; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct ncpaddr*,struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(struct iface *iface, struct ncp *ncp, const struct ncpaddr *del)
{
  struct ncpaddr found;
  unsigned n;
  int res, s;

  if ((s = FUNC0(FUNC7(del), SOCK_DGRAM, 0)) == -1) {
    FUNC4(LogERROR, "iface_Delete: socket(): %s\n", FUNC9(errno));
    return 0;
  }

  for (n = res = 0; n < iface->addrs; n++) {
    FUNC8(&iface->addr[n].ifa, &found);
    if (FUNC6(&found, del)) {
      if (FUNC3(iface->name, iface->addr + n, s)) {
        FUNC5(ncp, iface->addr + n);
        FUNC1(iface->addr + n + 1, iface->addr + n,
              (iface->addrs - n - 1) * sizeof *iface->addr);
        iface->addrs--;
        res = 1;
      }
      break;
    }
  }

  FUNC2(s);

  return res;
}