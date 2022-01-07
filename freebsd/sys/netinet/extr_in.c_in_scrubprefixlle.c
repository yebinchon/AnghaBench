
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_2__ sin_addr; } ;
struct in_ifaddr {TYPE_3__ ia_addr; struct ifnet* ia_ifp; int ia_subnetmask; } ;
struct ifnet {int dummy; } ;
typedef int mask ;
typedef int addr ;


 void* AF_INET ;
 int LLE_IFADDR ;
 int LLTABLE (struct ifnet*) ;
 int bzero (struct sockaddr_in*,int) ;
 int lltable_delete_addr (int ,int ,struct sockaddr*) ;
 int lltable_prefix_free (void*,struct sockaddr*,struct sockaddr*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
in_scrubprefixlle(struct in_ifaddr *ia, int all, u_int flags)
{
 struct sockaddr_in addr, mask;
 struct sockaddr *saddr, *smask;
 struct ifnet *ifp;

 saddr = (struct sockaddr *)&addr;
 bzero(&addr, sizeof(addr));
 addr.sin_len = sizeof(addr);
 addr.sin_family = AF_INET;
 smask = (struct sockaddr *)&mask;
 bzero(&mask, sizeof(mask));
 mask.sin_len = sizeof(mask);
 mask.sin_family = AF_INET;
 mask.sin_addr.s_addr = ia->ia_subnetmask;
 ifp = ia->ia_ifp;

 if (all) {







  addr.sin_addr.s_addr = ntohl(ia->ia_addr.sin_addr.s_addr);
  lltable_prefix_free(AF_INET, saddr, smask, flags);
 } else {

  addr.sin_addr.s_addr = ia->ia_addr.sin_addr.s_addr;
  lltable_delete_addr(LLTABLE(ifp), LLE_IFADDR, saddr);
 }
}
