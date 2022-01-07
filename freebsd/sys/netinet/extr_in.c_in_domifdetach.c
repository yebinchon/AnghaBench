
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifinfo {int ii_llt; } ;
struct ifnet {int dummy; } ;


 int M_IFADDR ;
 int free (struct in_ifinfo*,int ) ;
 int igmp_domifdetach (struct ifnet*) ;
 int lltable_free (int ) ;

void
in_domifdetach(struct ifnet *ifp, void *aux)
{
 struct in_ifinfo *ii = (struct in_ifinfo *)aux;

 igmp_domifdetach(ifp);
 lltable_free(ii->ii_llt);
 free(ii, M_IFADDR);
}
