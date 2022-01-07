
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int * s6id_list; } ;
struct ifnet {int if_index; } ;


 size_t IPV6_ADDR_SCOPE_INTFACELOCAL ;
 size_t IPV6_ADDR_SCOPE_LINKLOCAL ;
 int M_IFADDR ;
 int M_WAITOK ;
 int M_ZERO ;
 struct scope6_id* malloc (int,int ,int) ;

struct scope6_id *
scope6_ifattach(struct ifnet *ifp)
{
 struct scope6_id *sid;

 sid = malloc(sizeof(*sid), M_IFADDR, M_WAITOK | M_ZERO);




 sid->s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] = ifp->if_index;
 sid->s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] = ifp->if_index;
 return (sid);
}
