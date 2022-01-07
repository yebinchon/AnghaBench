
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {scalar_t__ ifa_carp; } ;


 scalar_t__ carp_master_p (struct ifaddr*) ;
 scalar_t__ stub1 (struct ifaddr*) ;
 scalar_t__ stub2 (struct ifaddr*) ;

int
ifa_preferred(struct ifaddr *cur, struct ifaddr *next)
{

 return (cur->ifa_carp && (!next->ifa_carp ||
     ((*carp_master_p)(next) && !(*carp_master_p)(cur))));
}
