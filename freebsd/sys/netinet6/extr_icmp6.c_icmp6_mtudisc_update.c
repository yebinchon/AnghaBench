
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ip6ctlparam {struct mbuf* ip6c_m; struct icmp6_hdr* ip6c_icmp6; struct in6_addr* ip6c_finaldst; } ;
struct ip6_hdr {int dummy; } ;
struct ip6_frag {int dummy; } ;
struct in6_addr {int dummy; } ;
struct in_conninfo {struct in6_addr inc6_faddr; int inc_flags; int inc_fibnum; } ;
struct icmp6_hdr {int icmp6_mtu; } ;
typedef int inc ;


 int ICMP6STAT_INC (int ) ;
 int INC_ISIPV6 ;
 int IPV6_MMTU ;
 int M_GETFIB (struct mbuf*) ;
 int bzero (struct in_conninfo*,int) ;
 int icp6s_pmtuchg ;
 scalar_t__ in6_setscope (struct in6_addr*,int ,int *) ;
 int ntohl (int ) ;
 int tcp_hc_updatemtu (struct in_conninfo*,int) ;
 int tcp_maxmtu6 (struct in_conninfo*,int *) ;

void
icmp6_mtudisc_update(struct ip6ctlparam *ip6cp, int validated)
{
 struct in6_addr *dst = ip6cp->ip6c_finaldst;
 struct icmp6_hdr *icmp6 = ip6cp->ip6c_icmp6;
 struct mbuf *m = ip6cp->ip6c_m;
 u_int mtu = ntohl(icmp6->icmp6_mtu);
 struct in_conninfo inc;
 if (mtu < sizeof(struct ip6_hdr) + sizeof(struct ip6_frag) + 8)
  return;

 if (!validated)
  return;







 if (mtu < IPV6_MMTU)
  mtu = IPV6_MMTU - 8;

 bzero(&inc, sizeof(inc));
 inc.inc_fibnum = M_GETFIB(m);
 inc.inc_flags |= INC_ISIPV6;
 inc.inc6_faddr = *dst;
 if (in6_setscope(&inc.inc6_faddr, m->m_pkthdr.rcvif, ((void*)0)))
  return;

 if (mtu < tcp_maxmtu6(&inc, ((void*)0))) {
  tcp_hc_updatemtu(&inc, mtu);
  ICMP6STAT_INC(icp6s_pmtuchg);
 }
}
