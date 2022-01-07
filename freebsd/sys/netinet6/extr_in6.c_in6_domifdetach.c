
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct in6_ifstat {int dummy; } ;
struct in6_ifextra {struct in6_ifextra* icmp6_ifstat; struct in6_ifextra* in6_ifstat; int lltable; int nd_ifinfo; int scope6_id; } ;
struct ifnet {int dummy; } ;
struct icmp6_ifstat {int dummy; } ;


 int COUNTER_ARRAY_FREE (struct in6_ifextra*,int) ;
 int M_IFADDR ;
 int free (struct in6_ifextra*,int ) ;
 int lltable_free (int ) ;
 int mld_domifdetach (struct ifnet*) ;
 int nd6_ifdetach (struct ifnet*,int ) ;
 int scope6_ifdetach (int ) ;

void
in6_domifdetach(struct ifnet *ifp, void *aux)
{
 struct in6_ifextra *ext = (struct in6_ifextra *)aux;

 mld_domifdetach(ifp);
 scope6_ifdetach(ext->scope6_id);
 nd6_ifdetach(ifp, ext->nd_ifinfo);
 lltable_free(ext->lltable);
 COUNTER_ARRAY_FREE(ext->in6_ifstat,
     sizeof(struct in6_ifstat) / sizeof(uint64_t));
 free(ext->in6_ifstat, M_IFADDR);
 COUNTER_ARRAY_FREE(ext->icmp6_ifstat,
     sizeof(struct icmp6_ifstat) / sizeof(uint64_t));
 free(ext->icmp6_ifstat, M_IFADDR);
 free(ext, M_IFADDR);
}
