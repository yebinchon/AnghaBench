
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capenable; } ;
typedef scalar_t__ if_t ;



int
if_togglecapenable(if_t ifp, int togglecap)
{
 ((struct ifnet *)ifp)->if_capenable ^= togglecap;
 return (0);
}
