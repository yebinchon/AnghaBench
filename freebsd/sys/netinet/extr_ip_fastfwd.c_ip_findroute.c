
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nhop4_basic {int nh_flags; } ;
struct mbuf {int dummy; } ;
struct in_addr {int dummy; } ;


 int EHOSTUNREACH ;
 int ICMP_UNREACH ;
 int ICMP_UNREACH_HOST ;
 int IPSTAT_INC (int ) ;
 int M_GETFIB (struct mbuf*) ;
 int NHF_BLACKHOLE ;
 int NHF_BROADCAST ;
 int NHF_REJECT ;
 int bzero (struct nhop4_basic*,int) ;
 scalar_t__ fib4_lookup_nh_basic (int ,struct in_addr,int ,int ,struct nhop4_basic*) ;
 int icmp_error (struct mbuf*,int ,int ,int ,int ) ;
 int ips_cantforward ;
 int ips_noroute ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
ip_findroute(struct nhop4_basic *pnh, struct in_addr dest, struct mbuf *m)
{

 bzero(pnh, sizeof(*pnh));
 if (fib4_lookup_nh_basic(M_GETFIB(m), dest, 0, 0, pnh) != 0) {
  IPSTAT_INC(ips_noroute);
  IPSTAT_INC(ips_cantforward);
  icmp_error(m, ICMP_UNREACH, ICMP_UNREACH_HOST, 0, 0);
  return (EHOSTUNREACH);
 }



 if ((pnh->nh_flags & (NHF_BLACKHOLE | NHF_BROADCAST)) != 0) {
  IPSTAT_INC(ips_cantforward);
  m_freem(m);
  return (EHOSTUNREACH);
 }

 if (pnh->nh_flags & NHF_REJECT) {
  IPSTAT_INC(ips_cantforward);
  icmp_error(m, ICMP_UNREACH, ICMP_UNREACH_HOST, 0, 0);
  return (EHOSTUNREACH);
 }

 return (0);
}
