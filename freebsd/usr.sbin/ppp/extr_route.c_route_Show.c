
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rt_msghdr {int rtm_index; int rtm_flags; int rtm_msglen; } ;
struct cmdargs {int prompt; } ;


 int CTL_NET ;
 int Index2Nam (int ) ;
 int LogERROR ;
 int NET_RT_DUMP ;
 int PF_ROUTE ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 int errno ;
 int free (char*) ;
 int log_Printf (int ,char*,int ) ;
 char* malloc (size_t) ;
 int p_flags (int ,int ,int) ;
 int p_sockaddr (int ,struct sockaddr*,struct sockaddr*,int) ;
 int prompt_Printf (int ,char*,...) ;
 int route_ParseHdr (struct rt_msghdr*,struct sockaddr**) ;
 int strerror (int ) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

int
route_Show(struct cmdargs const *arg)
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
  if (sysctl(mib, 6, ((void*)0), &needed, ((void*)0), 0) < 0) {
    log_Printf(LogERROR, "route_Show: sysctl: estimate: %s\n", strerror(errno));
    return (1);
  }
  sp = malloc(needed);
  if (sp == ((void*)0))
    return (1);
  if (sysctl(mib, 6, sp, &needed, ((void*)0), 0) < 0) {
    log_Printf(LogERROR, "route_Show: sysctl: getroute: %s\n", strerror(errno));
    free(sp);
    return (1);
  }
  ep = sp + needed;

  prompt_Printf(arg->prompt, "%-20s%-20sFlags  Netif\n",
                "Destination", "Gateway");
  for (cp = sp; cp < ep; cp += rtm->rtm_msglen) {
    rtm = (struct rt_msghdr *)cp;

    route_ParseHdr(rtm, sa);

    if (sa[RTAX_DST] && sa[RTAX_GATEWAY]) {
      p_sockaddr(arg->prompt, sa[RTAX_DST], sa[RTAX_NETMASK], 20);
      p_sockaddr(arg->prompt, sa[RTAX_GATEWAY], ((void*)0), 20);

      p_flags(arg->prompt, rtm->rtm_flags, 6);
      prompt_Printf(arg->prompt, " %s\n", Index2Nam(rtm->rtm_index));
    } else
      prompt_Printf(arg->prompt, "<can't parse routing entry>\n");
  }
  free(sp);
  return 0;
}
