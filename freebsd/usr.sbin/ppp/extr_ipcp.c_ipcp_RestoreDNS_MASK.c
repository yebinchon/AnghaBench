#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  resolv; scalar_t__ resolver; } ;
struct ipcp {TYPE_1__ ns; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  LogERROR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  _PATH_RESCONF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct ipcp *ipcp)
{
  if (ipcp->ns.resolver) {
    ssize_t got, len;
    int fd;

    if ((fd = FUNC0(_PATH_RESCONF, O_WRONLY|O_TRUNC, 0644)) != -1) {
      len = FUNC5(ipcp->ns.resolv);
      if ((got = FUNC6(fd, ipcp->ns.resolv, len)) != len) {
        if (got == -1)
          FUNC2(LogERROR, "Failed rewriting %s: write: %s\n",
                     _PATH_RESCONF, FUNC4(errno));
        else
          FUNC2(LogERROR, "Failed rewriting %s: wrote %ld of %ld\n",
                     _PATH_RESCONF, (long)got, (long)len);
      }
      FUNC1(fd);
    } else
      FUNC2(LogERROR, "Failed rewriting %s: open: %s\n", _PATH_RESCONF,
                 FUNC4(errno));
  } else if (FUNC3(_PATH_RESCONF) == -1)
    FUNC2(LogERROR, "Failed removing %s: %s\n", _PATH_RESCONF,
               FUNC4(errno));

}