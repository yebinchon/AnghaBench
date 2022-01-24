#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct ncp {int dummy; } ;
struct iface_addr {int system; int /*<<< orphan*/  peer; int /*<<< orphan*/  ifa; } ;
struct iface {unsigned int addrs; struct iface_addr* addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFACE_ADD_FIRST ; 
 int IFACE_FORCE_ADD ; 
 int IFACE_SYSTEM ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (struct iface_addr*,struct iface_addr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iface_addr*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct iface_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iface_addr*,struct iface_addr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp*,struct iface_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp*,struct iface_addr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ncpaddr const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct ncpaddr const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct ncprange const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct ncprange const*) ; 
 int FUNC14 (struct ncprange const*) ; 
 int /*<<< orphan*/  FUNC15 (struct ncprange const*,struct ncpaddr*) ; 
 scalar_t__ FUNC16 (struct iface_addr*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(struct iface *iface, struct ncp *ncp, const struct ncprange *ifa,
          const struct ncpaddr *peer, int how)
{
  int af, removed, s;
  unsigned n;
  struct ncpaddr ncplocal;
  struct iface_addr *addr, newaddr;

  af = FUNC14(ifa);
  if ((s = FUNC0(af, SOCK_DGRAM, 0)) == -1) {
    FUNC5(LogERROR, "iface_Add: socket(): %s\n", FUNC17(errno));
    return 0;
  }
  FUNC15(ifa, &ncplocal);

  for (n = 0; n < iface->addrs; n++) {
    if (FUNC11(&iface->addr[n].ifa, &ncplocal) ||
        FUNC10(&iface->addr[n].peer, peer)) {
      /* Replace this sockaddr */
      if (!(how & IFACE_FORCE_ADD)) {
        FUNC2(s);
        return 0;	/* errno = EEXIST; */
      }

      if (FUNC13(&iface->addr[n].ifa, ifa) &&
          FUNC10(&iface->addr[n].peer, peer)) {
        FUNC2(s);
        FUNC7(ncp, iface->addr + n);
        return 1;	/* Already there */
      }

      removed = FUNC4(iface->name, iface->addr + n, s);
      if (removed)
        FUNC8(ncp, iface->addr + n);
      FUNC12(&iface->addr[n].ifa, ifa);
      FUNC9(&iface->addr[n].peer, peer);
      if (!FUNC3(iface->name, iface->addr + n, s)) {
        if (removed) {
          FUNC1(iface->addr + n + 1, iface->addr + n,
                (iface->addrs - n - 1) * sizeof *iface->addr);
          iface->addrs--;
          n--;
        }
        FUNC2(s);
        return 0;
      }
      FUNC2(s);
      FUNC7(ncp, iface->addr + n);
      return 1;
    }
  }

  addr = (struct iface_addr *)FUNC16
    (iface->addr, (iface->addrs + 1) * sizeof iface->addr[0]);
  if (addr == NULL) {
    FUNC5(LogERROR, "iface_inAdd: realloc: %s\n", FUNC17(errno));
    FUNC2(s);
    return 0;
  }
  iface->addr = addr;

  FUNC12(&newaddr.ifa, ifa);
  FUNC9(&newaddr.peer, peer);
  newaddr.system = !!(how & IFACE_SYSTEM);
  if (!FUNC3(iface->name, &newaddr, s)) {
    FUNC2(s);
    return 0;
  }

  if (how & IFACE_ADD_FIRST) {
    /* Stuff it at the start of our list */
    n = 0;
    FUNC1(iface->addr, iface->addr + 1, iface->addrs * sizeof *iface->addr);
  } else
    n = iface->addrs;

  iface->addrs++;
  FUNC6(iface->addr + n, &newaddr, sizeof(*iface->addr));

  FUNC2(s);
  FUNC7(ncp, iface->addr + n);

  return 1;
}