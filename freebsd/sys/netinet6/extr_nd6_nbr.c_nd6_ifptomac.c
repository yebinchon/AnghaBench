
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_type; } ;
typedef int * caddr_t ;







 int * IF_LLADDR (struct ifnet*) ;

caddr_t
nd6_ifptomac(struct ifnet *ifp)
{
 switch (ifp->if_type) {
 case 131:
 case 130:
 case 128:
 case 129:
 case 132:
  return IF_LLADDR(ifp);
 default:
  return ((void*)0);
 }
}
