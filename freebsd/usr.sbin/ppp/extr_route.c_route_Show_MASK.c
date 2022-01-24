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
struct sockaddr {int dummy; } ;
struct rt_msghdr {int /*<<< orphan*/  rtm_index; int /*<<< orphan*/  rtm_flags; int /*<<< orphan*/  rtm_msglen; } ;
struct cmdargs {int /*<<< orphan*/  prompt; } ;

/* Variables and functions */
 int CTL_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int NET_RT_DUMP ; 
 int PF_ROUTE ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 int RTAX_MAX ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct rt_msghdr*,struct sockaddr**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(struct cmdargs const *arg)
{
  struct rt_msghdr *rtm;
  struct sockaddr *sa[RTAX_MAX];
  char *sp, *ep, *cp;
  size_t needed;
  int mib[6];

  mib[0] = CTL_NET;
  mib[1] = PF_ROUTE;
  mib[2] = 0;
  mib[3] = 0;
  mib[4] = NET_RT_DUMP;
  mib[5] = 0;
  if (FUNC9(mib, 6, NULL, &needed, NULL, 0) < 0) {
    FUNC2(LogERROR, "route_Show: sysctl: estimate: %s\n", FUNC8(errno));
    return (1);
  }
  sp = FUNC3(needed);
  if (sp == NULL)
    return (1);
  if (FUNC9(mib, 6, sp, &needed, NULL, 0) < 0) {
    FUNC2(LogERROR, "route_Show: sysctl: getroute: %s\n", FUNC8(errno));
    FUNC1(sp);
    return (1);
  }
  ep = sp + needed;

  FUNC6(arg->prompt, "%-20s%-20sFlags  Netif\n",
                "Destination", "Gateway");
  for (cp = sp; cp < ep; cp += rtm->rtm_msglen) {
    rtm = (struct rt_msghdr *)cp;

    FUNC7(rtm, sa);

    if (sa[RTAX_DST] && sa[RTAX_GATEWAY]) {
      FUNC5(arg->prompt, sa[RTAX_DST], sa[RTAX_NETMASK], 20);
      FUNC5(arg->prompt, sa[RTAX_GATEWAY], NULL, 20);

      FUNC4(arg->prompt, rtm->rtm_flags, 6);
      FUNC6(arg->prompt, " %s\n", FUNC0(rtm->rtm_index));
    } else
      FUNC6(arg->prompt, "<can't parse routing entry>\n");
  }
  FUNC1(sp);
  return 0;
}