
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct llentry {int dummy; } ;
struct ifnet {int dummy; } ;


 int IF_AFDATA_UNLOCK_ASSERT (struct ifnet*) ;
 int LLE_RUNLOCK (struct llentry*) ;
 int NET_EPOCH_ASSERT () ;
 scalar_t__ nd6_is_new_addr_neighbor (struct sockaddr_in6 const*,struct ifnet*) ;
 struct llentry* nd6_lookup (int *,int ,struct ifnet*) ;

int
nd6_is_addr_neighbor(const struct sockaddr_in6 *addr, struct ifnet *ifp)
{
 struct llentry *lle;
 int rc = 0;

 NET_EPOCH_ASSERT();
 IF_AFDATA_UNLOCK_ASSERT(ifp);
 if (nd6_is_new_addr_neighbor(addr, ifp))
  return (1);





 if ((lle = nd6_lookup(&addr->sin6_addr, 0, ifp)) != ((void*)0)) {
  LLE_RUNLOCK(lle);
  rc = 1;
 }
 return (rc);
}
