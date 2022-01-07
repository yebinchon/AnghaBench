
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uh ;
typedef int u_int16_t ;
struct udphdr {int uh_sport; int uh_dport; } ;
struct udpcb {int u_tun_ctx; int (* u_icmp_func ) (int,struct sockaddr const*,void*,int ) ;} ;
struct sockaddr_in6 {int dummy; } ;
typedef struct sockaddr {scalar_t__ sa_family; int sa_len; } const sockaddr ;
struct TYPE_2__ {int len; int rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ip6ctlparam {int ip6c_off; struct sockaddr_in6* ip6c_src; void* ip6c_cmdarg; struct ip6_hdr* ip6c_ip6; struct mbuf* ip6c_m; } ;
struct ip6_hdr {int ip6_src; int ip6_dst; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int dummy; } ;
typedef int caddr_t ;


 scalar_t__ AF_INET6 ;
 int INPLOOKUP_RLOCKPCB ;
 int INPLOOKUP_WILDCARD ;
 int INP_RUNLOCK (struct inpcb*) ;
 int PRC_HOSTDEAD ;
 scalar_t__ PRC_IS_REDIRECT (int) ;
 unsigned int PRC_NCMDS ;
 int bzero (struct udphdr*,int) ;
 struct inpcb* in6_pcblookup_mbuf (struct inpcbinfo*,int *,int ,int *,int ,int,int ,struct mbuf*) ;
 int in6_pcbnotify (struct inpcbinfo*,struct sockaddr const*,int ,struct sockaddr const*,int ,int,void*,struct inpcb* (*) (struct inpcb*,int)) ;
 struct inpcb* in6_rtchange (struct inpcb*,int) ;
 scalar_t__* inet6ctlerrmap ;
 struct udpcb* intoudpcb (struct inpcb*) ;
 int m_copydata (struct mbuf*,int,int,int ) ;
 struct sockaddr_in6 sa6_any ;
 int stub1 (int,struct sockaddr const*,void*,int ) ;
 struct inpcb* udp_notify (struct inpcb*,int) ;

__attribute__((used)) static void
udp6_common_ctlinput(int cmd, struct sockaddr *sa, void *d,
    struct inpcbinfo *pcbinfo)
{
 struct udphdr uh;
 struct ip6_hdr *ip6;
 struct mbuf *m;
 int off = 0;
 struct ip6ctlparam *ip6cp = ((void*)0);
 const struct sockaddr_in6 *sa6_src = ((void*)0);
 void *cmdarg;
 struct inpcb *(*notify)(struct inpcb *, int) = udp_notify;
 struct udp_portonly {
  u_int16_t uh_sport;
  u_int16_t uh_dport;
 } *uhp;

 if (sa->sa_family != AF_INET6 ||
     sa->sa_len != sizeof(struct sockaddr_in6))
  return;

 if ((unsigned)cmd >= PRC_NCMDS)
  return;
 if (PRC_IS_REDIRECT(cmd))
  notify = in6_rtchange, d = ((void*)0);
 else if (cmd == PRC_HOSTDEAD)
  d = ((void*)0);
 else if (inet6ctlerrmap[cmd] == 0)
  return;


 if (d != ((void*)0)) {
  ip6cp = (struct ip6ctlparam *)d;
  m = ip6cp->ip6c_m;
  ip6 = ip6cp->ip6c_ip6;
  off = ip6cp->ip6c_off;
  cmdarg = ip6cp->ip6c_cmdarg;
  sa6_src = ip6cp->ip6c_src;
 } else {
  m = ((void*)0);
  ip6 = ((void*)0);
  cmdarg = ((void*)0);
  sa6_src = &sa6_any;
 }

 if (ip6) {






  if (m->m_pkthdr.len < off + sizeof(*uhp))
   return;

  bzero(&uh, sizeof(uh));
  m_copydata(m, off, sizeof(*uhp), (caddr_t)&uh);

  if (!PRC_IS_REDIRECT(cmd)) {

   struct inpcb *inp;
   inp = in6_pcblookup_mbuf(pcbinfo, &ip6->ip6_dst,
       uh.uh_dport, &ip6->ip6_src, uh.uh_sport,
       INPLOOKUP_WILDCARD | INPLOOKUP_RLOCKPCB,
       m->m_pkthdr.rcvif, m);
   if (inp != ((void*)0)) {
    struct udpcb *up;

    up = intoudpcb(inp);
    if (up->u_icmp_func) {

     INP_RUNLOCK(inp);
     (*up->u_icmp_func)(cmd, (struct sockaddr *)ip6cp->ip6c_src,
           d, up->u_tun_ctx);
     return;
    } else {

     INP_RUNLOCK(inp);
    }
   }
  }
  (void)in6_pcbnotify(pcbinfo, sa, uh.uh_dport,
      (struct sockaddr *)ip6cp->ip6c_src, uh.uh_sport, cmd,
      cmdarg, notify);
 } else
  (void)in6_pcbnotify(pcbinfo, sa, 0,
      (const struct sockaddr *)sa6_src, 0, cmd, cmdarg, notify);
}
