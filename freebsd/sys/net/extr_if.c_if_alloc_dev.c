
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ifnet {int dummy; } ;
typedef int * device_t ;


 int IF_NODOM ;
 scalar_t__ bus_get_domain (int *,int*) ;
 struct ifnet* if_alloc_domain (int ,int) ;

struct ifnet *
if_alloc_dev(u_char type, device_t dev)
{
 int numa_domain;

 if (dev == ((void*)0) || bus_get_domain(dev, &numa_domain) != 0)
  return (if_alloc_domain(type, IF_NODOM));
 return (if_alloc_domain(type, numa_domain));
}
