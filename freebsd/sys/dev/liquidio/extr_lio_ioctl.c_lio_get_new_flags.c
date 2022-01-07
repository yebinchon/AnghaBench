
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef enum lio_ifflags { ____Placeholder_lio_ifflags } lio_ifflags ;


 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int LIO_IFFLAG_ALLMULTI ;
 int LIO_IFFLAG_BROADCAST ;
 int LIO_IFFLAG_MULTICAST ;
 int LIO_IFFLAG_PROMISC ;
 int LIO_IFFLAG_UNICAST ;
 scalar_t__ LIO_MAX_MULTICAST_ADDR ;
 scalar_t__ if_getamcount (struct ifnet*) ;
 int if_getflags (struct ifnet*) ;

__attribute__((used)) static inline enum lio_ifflags
lio_get_new_flags(struct ifnet *ifp)
{
 enum lio_ifflags f = LIO_IFFLAG_UNICAST;

 if (if_getflags(ifp) & IFF_PROMISC)
  f |= LIO_IFFLAG_PROMISC;

 if (if_getflags(ifp) & IFF_ALLMULTI)
  f |= LIO_IFFLAG_ALLMULTI;

 if (if_getflags(ifp) & IFF_MULTICAST) {
  f |= LIO_IFFLAG_MULTICAST;





  if (if_getamcount(ifp) > LIO_MAX_MULTICAST_ADDR)
   f |= LIO_IFFLAG_ALLMULTI;
 }
 if (if_getflags(ifp) & IFF_BROADCAST)
  f |= LIO_IFFLAG_BROADCAST;

 return (f);
}
