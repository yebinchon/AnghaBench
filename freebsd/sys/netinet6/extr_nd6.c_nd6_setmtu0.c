
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct nd_ifinfo {scalar_t__ maxmtu; } ;
struct ifnet {scalar_t__ if_mtu; } ;


 scalar_t__ IPV6_MMTU ;
 int LOG_NOTICE ;
 scalar_t__ V_in6_maxmtu ;
 int if_name (struct ifnet*) ;
 int in6_setmaxmtu () ;
 int log (int ,char*,int ,unsigned long) ;

void
nd6_setmtu0(struct ifnet *ifp, struct nd_ifinfo *ndi)
{
 u_int32_t omaxmtu;

 omaxmtu = ndi->maxmtu;
 ndi->maxmtu = ifp->if_mtu;







 if (omaxmtu >= IPV6_MMTU && ndi->maxmtu < IPV6_MMTU) {
  log(LOG_NOTICE, "nd6_setmtu0: "
      "new link MTU on %s (%lu) is too small for IPv6\n",
      if_name(ifp), (unsigned long)ndi->maxmtu);
 }

 if (ndi->maxmtu > V_in6_maxmtu)
  in6_setmaxmtu();

}
