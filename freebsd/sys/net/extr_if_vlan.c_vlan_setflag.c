
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {int ifv_pflags; } ;
struct ifnet {int if_flags; struct ifvlan* if_softc; } ;


 struct ifnet* PARENT (struct ifvlan*) ;
 int VLAN_SXLOCK_ASSERT () ;
 int stub1 (struct ifnet*,int) ;

__attribute__((used)) static int
vlan_setflag(struct ifnet *ifp, int flag, int status,
      int (*func)(struct ifnet *, int))
{
 struct ifvlan *ifv;
 int error;

 VLAN_SXLOCK_ASSERT();

 ifv = ifp->if_softc;
 status = status ? (ifp->if_flags & flag) : 0;
 if (status != (ifv->ifv_pflags & flag)) {
  error = (*func)(PARENT(ifv), status);
  if (error)
   return (error);
  ifv->ifv_pflags &= ~flag;
  ifv->ifv_pflags |= status;
 }
 return (0);
}
