
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
typedef void* u_int32_t ;
typedef scalar_t__ u_int ;
struct in6_addr {int dummy; } ;
struct in_conninfo {struct in6_addr inc6_faddr; int inc_flags; } ;
struct ifnet {int dummy; } ;
typedef int inc ;


 int EHOSTUNREACH ;
 void* IN6_LINKMTU (struct ifnet*) ;
 int INC_ISIPV6 ;
 scalar_t__ IPPROTO_TCP ;
 void* IPV6_MMTU ;
 int bzero (struct in_conninfo*,int) ;
 void* min (void*,void*) ;
 void* tcp_hc_getmtu (struct in_conninfo*) ;

__attribute__((used)) static int
ip6_calcmtu(struct ifnet *ifp, const struct in6_addr *dst, u_long rt_mtu,
    u_long *mtup, int *alwaysfragp, u_int proto)
{
 u_long mtu = 0;
 int alwaysfrag = 0;
 int error = 0;

 if (rt_mtu > 0) {
  u_int32_t ifmtu;
  struct in_conninfo inc;

  bzero(&inc, sizeof(inc));
  inc.inc_flags |= INC_ISIPV6;
  inc.inc6_faddr = *dst;

  ifmtu = IN6_LINKMTU(ifp);


  if (proto != IPPROTO_TCP)
   mtu = tcp_hc_getmtu(&inc);

  if (mtu)
   mtu = min(mtu, rt_mtu);
  else
   mtu = rt_mtu;
  if (mtu == 0)
   mtu = ifmtu;
  else if (mtu < IPV6_MMTU) {
   alwaysfrag = 1;
   mtu = IPV6_MMTU;
  }
 } else if (ifp) {
  mtu = IN6_LINKMTU(ifp);
 } else
  error = EHOSTUNREACH;

 *mtup = mtu;
 if (alwaysfragp)
  *alwaysfragp = alwaysfrag;
 return (error);
}
