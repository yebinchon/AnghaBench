
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct TYPE_8__ {int ia_addr; } ;
struct TYPE_7__ {int ia_addr; } ;
struct TYPE_6__ {int sa_family; } ;




 int LLE_STATIC ;
 int ifa_del_loopback_route (struct ifaddr*,struct sockaddr*) ;
 TYPE_3__* ifatoia (struct ifaddr*) ;
 TYPE_2__* ifatoia6 (struct ifaddr*) ;
 int in_scrubprefix (TYPE_3__*,int ) ;
 int nd6_rem_ifa_lle (TYPE_2__*,int) ;

__attribute__((used)) static void
carp_ifa_delroute(struct ifaddr *ifa)
{

 switch (ifa->ifa_addr->sa_family) {
 }
}
