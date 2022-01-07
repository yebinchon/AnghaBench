
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifaddr {TYPE_1__* ifa_carp; } ;
struct TYPE_2__ {int sc_vhid; } ;



__attribute__((used)) static int
carp_get_vhid(struct ifaddr *ifa)
{

 if (ifa == ((void*)0) || ifa->ifa_carp == ((void*)0))
  return (0);

 return (ifa->ifa_carp->sc_vhid);
}
