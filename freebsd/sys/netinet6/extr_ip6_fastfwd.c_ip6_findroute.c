
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_flowinfo; int sin6_scope_id; int sin6_addr; } ;
struct nhop6_basic {int nh_flags; } ;
struct mbuf {int dummy; } ;


 int EHOSTUNREACH ;
 int ICMP6_DST_UNREACH ;
 int ICMP6_DST_UNREACH_NOROUTE ;
 int ICMP6_DST_UNREACH_REJECT ;
 int IP6STAT_INC (int ) ;
 int M_GETFIB (struct mbuf*) ;
 int NHF_BLACKHOLE ;
 int NHF_REJECT ;
 scalar_t__ fib6_lookup_nh_basic (int ,int *,int ,int ,int ,struct nhop6_basic*) ;
 int icmp6_error (struct mbuf*,int ,int ,int ) ;
 int ip6s_cantforward ;
 int ip6s_noroute ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
ip6_findroute(struct nhop6_basic *pnh, const struct sockaddr_in6 *dst,
    struct mbuf *m)
{

 if (fib6_lookup_nh_basic(M_GETFIB(m), &dst->sin6_addr,
     dst->sin6_scope_id, 0, dst->sin6_flowinfo, pnh) != 0) {
  IP6STAT_INC(ip6s_noroute);
  IP6STAT_INC(ip6s_cantforward);
  icmp6_error(m, ICMP6_DST_UNREACH,
      ICMP6_DST_UNREACH_NOROUTE, 0);
  return (EHOSTUNREACH);
 }
 if (pnh->nh_flags & NHF_BLACKHOLE) {
  IP6STAT_INC(ip6s_cantforward);
  m_freem(m);
  return (EHOSTUNREACH);
 }

 if (pnh->nh_flags & NHF_REJECT) {
  IP6STAT_INC(ip6s_cantforward);
  icmp6_error(m, ICMP6_DST_UNREACH,
      ICMP6_DST_UNREACH_REJECT, 0);
  return (EHOSTUNREACH);
 }
 return (0);
}
