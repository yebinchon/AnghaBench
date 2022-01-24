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
struct sockaddr {int sa_family; } ;
struct rt_msghdr {scalar_t__ rtm_index; int rtm_flags; int /*<<< orphan*/  rtm_msglen; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct bundle {TYPE_1__* iface; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_LINK ; 
 int CTL_NET ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 int NCP_ASCIIBUFFERSIZE ; 
 int NET_RT_DUMP ; 
 int PF_ROUTE ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 int RTAX_MAX ; 
 size_t RTAX_NETMASK ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncpaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncprange*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncprange*,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt_msghdr*,struct sockaddr**) ; 
 int /*<<< orphan*/  FUNC9 (struct bundle*,int /*<<< orphan*/ ,struct ncprange*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC13(struct bundle *bundle, int all)
{
  struct rt_msghdr *rtm;
  struct sockaddr *sa[RTAX_MAX];
  struct ncprange range;
  int pass;
  size_t needed;
  char *sp, *cp, *ep;
  int mib[6];

  FUNC2(LogDEBUG, "route_IfDelete (%d)\n", bundle->iface->index);

  mib[0] = CTL_NET;
  mib[1] = PF_ROUTE;
  mib[2] = 0;
  mib[3] = 0;
  mib[4] = NET_RT_DUMP;
  mib[5] = 0;
  if (FUNC12(mib, 6, NULL, &needed, NULL, 0) < 0) {
    FUNC2(LogERROR, "route_IfDelete: sysctl: estimate: %s\n",
              FUNC11(errno));
    return;
  }

  sp = FUNC3(needed);
  if (sp == NULL)
    return;

  if (FUNC12(mib, 6, sp, &needed, NULL, 0) < 0) {
    FUNC2(LogERROR, "route_IfDelete: sysctl: getroute: %s\n",
              FUNC11(errno));
    FUNC0(sp);
    return;
  }
  ep = sp + needed;

  for (pass = 0; pass < 2; pass++) {
    /*
     * We do 2 passes.  The first deletes all cloned routes.  The second
     * deletes all non-cloned routes.  This is done to avoid
     * potential errors from trying to delete route X after route Y where
     * route X was cloned from route Y (and is no longer there 'cos it
     * may have gone with route Y).
     */
    if (pass == 0)
      /* So we can't tell ! */
      continue;
    for (cp = sp; cp < ep; cp += rtm->rtm_msglen) {
      rtm = (struct rt_msghdr *)cp;
      FUNC8(rtm, sa);
      if (rtm->rtm_index == bundle->iface->index &&
          sa[RTAX_DST] && sa[RTAX_GATEWAY] &&
          (sa[RTAX_DST]->sa_family == AF_INET
#ifndef NOINET6
           || sa[RTAX_DST]->sa_family == AF_INET6
#endif
           ) &&
          (all || (rtm->rtm_flags & RTF_GATEWAY))) {
        if (FUNC1(LogDEBUG)) {
          char gwstr[NCP_ASCIIBUFFERSIZE];
          struct ncpaddr gw;
          FUNC7(&range, sa[RTAX_DST], sa[RTAX_NETMASK]);
          FUNC5(&gw, sa[RTAX_GATEWAY]);
          FUNC10(gwstr, sizeof gwstr, "%s", FUNC4(&gw));
          FUNC2(LogDEBUG, "Found %s %s\n", FUNC6(&range), gwstr);
        }
        if (sa[RTAX_GATEWAY]->sa_family == AF_INET ||
#ifndef NOINET6
            sa[RTAX_GATEWAY]->sa_family == AF_INET6 ||
#endif
            sa[RTAX_GATEWAY]->sa_family == AF_LINK) {
          if (pass == 1) {
            FUNC7(&range, sa[RTAX_DST], sa[RTAX_NETMASK]);
            FUNC9(bundle, RTM_DELETE, &range, NULL, 0, 0);
          } else
            FUNC2(LogDEBUG, "route_IfDelete: Skip it (pass %d)\n", pass);
        } else
          FUNC2(LogDEBUG,
                    "route_IfDelete: Can't remove routes for family %d\n",
                    sa[RTAX_GATEWAY]->sa_family);
      }
    }
  }
  FUNC0(sp);
}