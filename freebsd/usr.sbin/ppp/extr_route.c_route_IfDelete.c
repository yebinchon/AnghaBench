
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct rt_msghdr {scalar_t__ rtm_index; int rtm_flags; int rtm_msglen; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct bundle {TYPE_1__* iface; } ;
struct TYPE_2__ {int index; } ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_LINK ;
 int CTL_NET ;
 int LogDEBUG ;
 int LogERROR ;
 int NCP_ASCIIBUFFERSIZE ;
 int NET_RT_DUMP ;
 int PF_ROUTE ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 int RTF_GATEWAY ;
 int RTM_DELETE ;
 int errno ;
 int free (char*) ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,int,...) ;
 char* malloc (size_t) ;
 char* ncpaddr_ntoa (struct ncpaddr*) ;
 int ncpaddr_setsa (struct ncpaddr*,struct sockaddr*) ;
 int ncprange_ntoa (struct ncprange*) ;
 int ncprange_setsa (struct ncprange*,struct sockaddr*,struct sockaddr*) ;
 int route_ParseHdr (struct rt_msghdr*,struct sockaddr**) ;
 int rt_Set (struct bundle*,int ,struct ncprange*,int *,int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int ) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

void
route_IfDelete(struct bundle *bundle, int all)
{
  struct rt_msghdr *rtm;
  struct sockaddr *sa[RTAX_MAX];
  struct ncprange range;
  int pass;
  size_t needed;
  char *sp, *cp, *ep;
  int mib[6];

  log_Printf(LogDEBUG, "route_IfDelete (%d)\n", bundle->iface->index);

  mib[0] = CTL_NET;
  mib[1] = PF_ROUTE;
  mib[2] = 0;
  mib[3] = 0;
  mib[4] = NET_RT_DUMP;
  mib[5] = 0;
  if (sysctl(mib, 6, ((void*)0), &needed, ((void*)0), 0) < 0) {
    log_Printf(LogERROR, "route_IfDelete: sysctl: estimate: %s\n",
              strerror(errno));
    return;
  }

  sp = malloc(needed);
  if (sp == ((void*)0))
    return;

  if (sysctl(mib, 6, sp, &needed, ((void*)0), 0) < 0) {
    log_Printf(LogERROR, "route_IfDelete: sysctl: getroute: %s\n",
              strerror(errno));
    free(sp);
    return;
  }
  ep = sp + needed;

  for (pass = 0; pass < 2; pass++) {







    if (pass == 0)

      continue;
    for (cp = sp; cp < ep; cp += rtm->rtm_msglen) {
      rtm = (struct rt_msghdr *)cp;
      route_ParseHdr(rtm, sa);
      if (rtm->rtm_index == bundle->iface->index &&
          sa[RTAX_DST] && sa[RTAX_GATEWAY] &&
          (sa[RTAX_DST]->sa_family == AF_INET

           || sa[RTAX_DST]->sa_family == AF_INET6

           ) &&
          (all || (rtm->rtm_flags & RTF_GATEWAY))) {
        if (log_IsKept(LogDEBUG)) {
          char gwstr[NCP_ASCIIBUFFERSIZE];
          struct ncpaddr gw;
          ncprange_setsa(&range, sa[RTAX_DST], sa[RTAX_NETMASK]);
          ncpaddr_setsa(&gw, sa[RTAX_GATEWAY]);
          snprintf(gwstr, sizeof gwstr, "%s", ncpaddr_ntoa(&gw));
          log_Printf(LogDEBUG, "Found %s %s\n", ncprange_ntoa(&range), gwstr);
        }
        if (sa[RTAX_GATEWAY]->sa_family == AF_INET ||

            sa[RTAX_GATEWAY]->sa_family == AF_INET6 ||

            sa[RTAX_GATEWAY]->sa_family == AF_LINK) {
          if (pass == 1) {
            ncprange_setsa(&range, sa[RTAX_DST], sa[RTAX_NETMASK]);
            rt_Set(bundle, RTM_DELETE, &range, ((void*)0), 0, 0);
          } else
            log_Printf(LogDEBUG, "route_IfDelete: Skip it (pass %d)\n", pass);
        } else
          log_Printf(LogDEBUG,
                    "route_IfDelete: Can't remove routes for family %d\n",
                    sa[RTAX_GATEWAY]->sa_family);
      }
    }
  }
  free(sp);
}
