
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stf_softc {int dummy; } ;
struct mbuf {int dummy; } ;
struct in_addr {int s_addr; } ;
struct ip {int ip_v; struct in_addr ip_src; int ip_dst; } ;
struct in6_addr {int dummy; } ;
typedef int mask ;
typedef int ip ;
typedef int caddr_t ;
typedef int a ;
struct TYPE_3__ {int if_flags; } ;


 int GET_V4 (struct in6_addr*) ;
 int IFF_LINK0 ;
 int IFF_UP ;
 int IPPROTO_IPV6 ;
 TYPE_1__* STF2IFP (struct stf_softc*) ;
 scalar_t__ bcmp (int ,int *,int) ;
 int bcopy (int ,struct in_addr*,int) ;
 int bzero (struct in_addr*,int) ;
 int m_copydata (struct mbuf const*,int ,int,int ) ;
 scalar_t__ stf_getsrcifa6 (TYPE_1__*,struct in6_addr*,struct in6_addr*) ;

__attribute__((used)) static int
stf_encapcheck(const struct mbuf *m, int off, int proto, void *arg)
{
 struct ip ip;
 struct stf_softc *sc;
 struct in_addr a, b, mask;
 struct in6_addr addr6, mask6;

 sc = (struct stf_softc *)arg;
 if (sc == ((void*)0))
  return 0;

 if ((STF2IFP(sc)->if_flags & IFF_UP) == 0)
  return 0;


 if ((STF2IFP(sc)->if_flags & IFF_LINK0) != 0)
  return 0;

 if (proto != IPPROTO_IPV6)
  return 0;

 m_copydata(m, 0, sizeof(ip), (caddr_t)&ip);

 if (ip.ip_v != 4)
  return 0;

 if (stf_getsrcifa6(STF2IFP(sc), &addr6, &mask6) != 0)
  return (0);






 if (bcmp(GET_V4(&addr6), &ip.ip_dst, sizeof(ip.ip_dst)) != 0)
  return 0;







 bzero(&a, sizeof(a));
 bcopy(GET_V4(&addr6), &a, sizeof(a));
 bcopy(GET_V4(&mask6), &mask, sizeof(mask));
 a.s_addr &= mask.s_addr;
 b = ip.ip_src;
 b.s_addr &= mask.s_addr;
 if (a.s_addr != b.s_addr)
  return 0;


 return 32;
}
