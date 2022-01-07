
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; void* sin6_family; } ;
struct rt_msghdr {int rtm_flags; int rtm_addrs; int rtm_msglen; int rtm_pid; scalar_t__ rtm_seq; int rtm_version; int rtm_type; } ;
struct netinfo6 {int rip6_plen; struct in6_addr rip6_dest; } ;
typedef int buf2 ;
typedef int buf ;


 void* AF_INET6 ;
 int BUFSIZ ;
 scalar_t__ ESRCH ;
 int Qflag ;
 int ROUNDUP (int) ;
 int RTA_DST ;
 int RTA_GATEWAY ;
 int RTA_NETMASK ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_UP ;
 int RTM_DELETE ;
 int RTM_VERSION ;
 scalar_t__ errno ;
 int fprintf (scalar_t__,char*,char*,...) ;
 char* hms () ;
 char* inet6_n2p (struct in6_addr*) ;
 int inet_ntop (void*,void*,char*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ nflag ;
 int pid ;
 struct in6_addr* plen2mask (int) ;
 scalar_t__ rtlog ;
 int rtsock ;
 scalar_t__ seq ;
 char* strerror (scalar_t__) ;
 int trace (int ,char*,char*,...) ;
 int tracet (int,char*,char*,int,char*) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static int
delroute(struct netinfo6 *np, struct in6_addr *gw)
{
 u_char buf[BUFSIZ], buf2[BUFSIZ];
 struct rt_msghdr *rtm;
 struct sockaddr_in6 *sin6;
 int len;

 inet_ntop(AF_INET6, (void *)gw, (char *)buf2, sizeof(buf2));
 tracet(1, "DEL: %s/%d gw %s\n", inet6_n2p(&np->rip6_dest),
  np->rip6_plen, buf2);
 if (rtlog)
  fprintf(rtlog, "%s: DEL: %s/%d gw %s\n",
   hms(), inet6_n2p(&np->rip6_dest), np->rip6_plen, buf2);
 if (nflag)
  return 0;

 memset(buf, 0, sizeof(buf));
 rtm = (struct rt_msghdr *)(void *)buf;
 rtm->rtm_type = RTM_DELETE;
 rtm->rtm_version = RTM_VERSION;
 rtm->rtm_seq = ++seq;
 rtm->rtm_pid = pid;
 rtm->rtm_flags = RTF_UP | RTF_GATEWAY;
 rtm->rtm_flags |= Qflag;
 if (np->rip6_plen == sizeof(struct in6_addr) * 8)
  rtm->rtm_flags |= RTF_HOST;
 rtm->rtm_addrs = RTA_DST | RTA_GATEWAY | RTA_NETMASK;
 sin6 = (struct sockaddr_in6 *)(void *)&buf[sizeof(struct rt_msghdr)];

 sin6->sin6_len = sizeof(struct sockaddr_in6);
 sin6->sin6_family = AF_INET6;
 sin6->sin6_addr = np->rip6_dest;
 sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + ROUNDUP(sin6->sin6_len));

 sin6->sin6_len = sizeof(struct sockaddr_in6);
 sin6->sin6_family = AF_INET6;
 sin6->sin6_addr = *gw;
 sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + ROUNDUP(sin6->sin6_len));

 sin6->sin6_len = sizeof(struct sockaddr_in6);
 sin6->sin6_family = AF_INET6;
 sin6->sin6_addr = *(plen2mask(np->rip6_plen));
 sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + ROUNDUP(sin6->sin6_len));

 len = (char *)sin6 - (char *)buf;
 rtm->rtm_msglen = len;
 if (write(rtsock, buf, len) >= 0)
  return 0;

 if (errno == ESRCH) {
  trace(0, "RTDEL: Route does not exist: %s/%d gw %s\n",
      inet6_n2p(&np->rip6_dest), np->rip6_plen, buf2);
  if (rtlog)
   fprintf(rtlog, "RTDEL: Route does not exist: %s/%d gw %s\n",
       inet6_n2p(&np->rip6_dest), np->rip6_plen, buf2);
 } else {
  trace(0, "Can not write to rtsock (delroute): %s\n",
      strerror(errno));
  if (rtlog)
   fprintf(rtlog, "\tCan not write to rtsock: %s\n",
       strerror(errno));
 }
 return -1;
}
