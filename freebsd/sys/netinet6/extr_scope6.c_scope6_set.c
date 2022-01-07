
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {scalar_t__* s6id_list; } ;
struct ifnet {scalar_t__ if_index; } ;


 int EINVAL ;
 int IF_AFDATA_WLOCK (struct ifnet*) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*) ;
 int IPV6_ADDR_SCOPE_INTFACELOCAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 struct scope6_id* SID (struct ifnet*) ;
 scalar_t__ V_if_index ;

__attribute__((used)) static int
scope6_set(struct ifnet *ifp, struct scope6_id *idlist)
{
 int i;
 int error = 0;
 struct scope6_id *sid = ((void*)0);

 IF_AFDATA_WLOCK(ifp);
 sid = SID(ifp);

 if (!sid) {
  IF_AFDATA_WUNLOCK(ifp);
  return (EINVAL);
 }
 for (i = 0; i < 16; i++) {
  if (idlist->s6id_list[i] &&
      idlist->s6id_list[i] != sid->s6id_list[i]) {




   if (i == IPV6_ADDR_SCOPE_INTFACELOCAL &&
       idlist->s6id_list[i] != ifp->if_index) {
    IF_AFDATA_WUNLOCK(ifp);
    return (EINVAL);
   }

   if (i == IPV6_ADDR_SCOPE_LINKLOCAL &&
       idlist->s6id_list[i] > V_if_index) {






    IF_AFDATA_WUNLOCK(ifp);
    return (EINVAL);
   }






   sid->s6id_list[i] = idlist->s6id_list[i];
  }
 }
 IF_AFDATA_WUNLOCK(ifp);

 return (error);
}
