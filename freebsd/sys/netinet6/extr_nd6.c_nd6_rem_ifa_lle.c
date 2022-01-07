
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia_prefixmask; int ia_addr; TYPE_1__ ia_ifa; } ;
struct ifnet {int dummy; } ;


 int AF_INET6 ;
 int LLE_IFADDR ;
 int LLE_STATIC ;
 int LLTABLE6 (struct ifnet*) ;
 int lltable_delete_addr (int ,int ,struct sockaddr*) ;
 int lltable_prefix_free (int ,struct sockaddr*,struct sockaddr*,int ) ;
 int memcpy (struct sockaddr_in6*,int *,int) ;

void
nd6_rem_ifa_lle(struct in6_ifaddr *ia, int all)
{
 struct sockaddr_in6 mask, addr;
 struct sockaddr *saddr, *smask;
 struct ifnet *ifp;

 ifp = ia->ia_ifa.ifa_ifp;
 memcpy(&addr, &ia->ia_addr, sizeof(ia->ia_addr));
 memcpy(&mask, &ia->ia_prefixmask, sizeof(ia->ia_prefixmask));
 saddr = (struct sockaddr *)&addr;
 smask = (struct sockaddr *)&mask;

 if (all != 0)
  lltable_prefix_free(AF_INET6, saddr, smask, LLE_STATIC);
 else
  lltable_delete_addr(LLTABLE6(ifp), LLE_IFADDR, saddr);
}
