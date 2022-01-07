
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capenable; } ;
typedef scalar_t__ if_t ;



int
if_setcapenable(if_t ifp, int capabilities)
{
 ((struct ifnet *)ifp)->if_capenable = capabilities;
 return (0);
}
