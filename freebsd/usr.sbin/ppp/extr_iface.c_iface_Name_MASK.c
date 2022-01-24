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
struct ifreq {char* ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct iface {char* name; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCSIFNAME ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC7(struct iface *iface, const char *name)
{
  struct ifreq ifr;
  int s;
  char *newname;

  if ((newname = FUNC4(name)) == NULL) {
    FUNC3(LogWARN, "iface name: strdup failed: %s\n", FUNC5(errno));
    return 0;
  }

  if ((s = FUNC1(PF_INET, SOCK_DGRAM, 0)) == -1) {
    FUNC3(LogERROR, "iface name: socket(): %s\n", FUNC5(errno));
    FUNC2(newname);
    return 0;
  }

  FUNC6(ifr.ifr_name, iface->name, sizeof(ifr.ifr_name));
  ifr.ifr_data = newname;
  if (FUNC0(s, SIOCSIFNAME, (caddr_t)&ifr) < 0) {
    FUNC3(LogWARN, "iface name: ioctl(SIOCSIFNAME, %s -> %s): %s\n",
               name, newname, FUNC5(errno));
    FUNC2(newname);
    return 0;
  }

  FUNC2(iface->name);
  iface->name = newname;

  return 1;
}