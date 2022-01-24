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
struct TYPE_3__ {TYPE_2__* dns; scalar_t__ resolv_nons; } ;
struct ipcp {TYPE_1__ ns; } ;
typedef  int mode_t ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INADDR_ANY ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogIPCP ; 
 int /*<<< orphan*/  _PATH_RESCONF ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

int
FUNC8(struct ipcp *ipcp)
{
  const char *paddr;
  mode_t mask;
  FILE *fp;

  if (ipcp->ns.dns[0].s_addr == INADDR_ANY &&
      ipcp->ns.dns[1].s_addr == INADDR_ANY) {
    FUNC5(LogIPCP, "%s not modified: All nameservers NAKd\n",
              _PATH_RESCONF);
    return 0;
  }

  if (ipcp->ns.dns[0].s_addr == INADDR_ANY) {
    ipcp->ns.dns[0].s_addr = ipcp->ns.dns[1].s_addr;
    ipcp->ns.dns[1].s_addr = INADDR_ANY;
  }

  mask = FUNC7(022);
  if ((fp = FUNC0(_PATH_RESCONF, "w")) != NULL) {
    FUNC7(mask);
    if (ipcp->ns.resolv_nons)
      FUNC3(ipcp->ns.resolv_nons, fp);
    paddr = FUNC4(ipcp->ns.dns[0]);
    FUNC5(LogIPCP, "Primary nameserver set to %s\n", paddr);
    FUNC2(fp, "\nnameserver %s\n", paddr);
    if (ipcp->ns.dns[1].s_addr != INADDR_ANY &&
        ipcp->ns.dns[1].s_addr != INADDR_NONE &&
        ipcp->ns.dns[1].s_addr != ipcp->ns.dns[0].s_addr) {
      paddr = FUNC4(ipcp->ns.dns[1]);
      FUNC5(LogIPCP, "Secondary nameserver set to %s\n", paddr);
      FUNC2(fp, "nameserver %s\n", paddr);
    }
    if (FUNC1(fp) == EOF) {
      FUNC5(LogERROR, "write(): Failed updating %s: %s\n", _PATH_RESCONF,
                 FUNC6(errno));
      return 0;
    }
  } else {
    FUNC7(mask);
    FUNC5(LogERROR,"fopen(\"%s\", \"w\") failed: %s\n", _PATH_RESCONF,
                 FUNC6(errno));
  }

  return 1;
}