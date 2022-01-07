
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_index; } ;


 int if_rele (struct ifnet*) ;
 struct ifnet* ifunit_ref (char*) ;

__attribute__((used)) static int
ipfw_kiflookup(char *name)
{
 struct ifnet *ifp;
 int ifindex;

 ifindex = 0;

 if ((ifp = ifunit_ref(name)) != ((void*)0)) {
  ifindex = ifp->if_index;
  if_rele(ifp);
 }

 return (ifindex);
}
