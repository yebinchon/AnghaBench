
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct ifaddr* if_addr; } ;
struct ifaddr {int dummy; } ;
typedef scalar_t__ if_t ;



struct ifaddr *
if_getifaddr(if_t ifp)
{
 return ((struct ifnet *)ifp)->if_addr;
}
