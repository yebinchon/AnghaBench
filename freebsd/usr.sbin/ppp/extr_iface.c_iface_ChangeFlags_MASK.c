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
struct ifreq {char* ifr_name; int ifr_flags; int ifr_flagshigh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFACE_ADDFLAGS ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(const char *ifname, int flags, int how)
{
  struct ifreq ifrq;
  int s, new_flags;

  s = FUNC1(PF_INET, SOCK_DGRAM, 0);
  if (s < 0) {
    FUNC3(LogERROR, "iface_ChangeFlags: socket: %s\n", FUNC5(errno));
    return 0;
  }

  FUNC4(&ifrq, '\0', sizeof ifrq);
  FUNC6(ifrq.ifr_name, ifname, sizeof ifrq.ifr_name - 1);
  ifrq.ifr_name[sizeof ifrq.ifr_name - 1] = '\0';
  if (FUNC0(s, SIOCGIFFLAGS, &ifrq) < 0) {
    FUNC3(LogERROR, "iface_ChangeFlags: ioctl(SIOCGIFFLAGS): %s\n",
       FUNC5(errno));
    FUNC2(s);
    return 0;
  }
#ifdef __FreeBSD__
  new_flags = (ifrq.ifr_flags & 0xffff) | (ifrq.ifr_flagshigh << 16);
#else
  new_flags = ifrq.ifr_flags & 0xffff;
#endif

  if (how == IFACE_ADDFLAGS)
    new_flags |= flags;
  else
    new_flags &= ~flags;
  ifrq.ifr_flags = new_flags & 0xffff;
#ifdef __FreeBSD__
  ifrq.ifr_flagshigh = new_flags >> 16;
#endif

  if (FUNC0(s, SIOCSIFFLAGS, &ifrq) < 0) {
    FUNC3(LogERROR, "iface_ChangeFlags: ioctl(SIOCSIFFLAGS): %s\n",
       FUNC5(errno));
    FUNC2(s);
    return 0;
  }
  FUNC2(s);

  return 1;	/* Success */
}