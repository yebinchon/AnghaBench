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
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
struct iface {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct iface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct iface *iface)
{
  struct ifreq ifr;
  int s;

  if (iface != NULL) {
    if ((s = FUNC1(PF_INET, SOCK_DGRAM, 0)) == -1) {
      FUNC3(LogERROR, "iface_Destroy: socket(): %s\n", FUNC4(errno));
    } else {
      FUNC5(ifr.ifr_name, iface->name, sizeof(ifr.ifr_name));
      if (FUNC0(s, SIOCIFDESTROY, (caddr_t)&ifr) < 0)
        FUNC3(LogWARN, "iface_Destroy: ioctl(SIOCIFDESTROY, %s): %s\n",
               iface->name, FUNC4(errno));
    }
    FUNC2(iface);
  }
}