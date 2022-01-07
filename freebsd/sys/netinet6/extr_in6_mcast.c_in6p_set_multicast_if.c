
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sockopt {int sopt_valsize; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct inpcb {int dummy; } ;
struct ifnet {int if_flags; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int IFF_MULTICAST ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ V_if_index ;
 struct ifnet* ifnet_byindex (scalar_t__) ;
 struct ip6_moptions* in6p_findmoptions (struct inpcb*) ;
 int sooptcopyin (struct sockopt*,scalar_t__*,int,int) ;

__attribute__((used)) static int
in6p_set_multicast_if(struct inpcb *inp, struct sockopt *sopt)
{
 struct ifnet *ifp;
 struct ip6_moptions *imo;
 u_int ifindex;
 int error;

 if (sopt->sopt_valsize != sizeof(u_int))
  return (EINVAL);

 error = sooptcopyin(sopt, &ifindex, sizeof(u_int), sizeof(u_int));
 if (error)
  return (error);
 if (V_if_index < ifindex)
  return (EINVAL);
 if (ifindex == 0)
  ifp = ((void*)0);
 else {
  ifp = ifnet_byindex(ifindex);
  if (ifp == ((void*)0))
   return (EINVAL);
  if ((ifp->if_flags & IFF_MULTICAST) == 0)
   return (EADDRNOTAVAIL);
 }
 imo = in6p_findmoptions(inp);
 imo->im6o_multicast_ifp = ifp;
 INP_WUNLOCK(inp);

 return (0);
}
