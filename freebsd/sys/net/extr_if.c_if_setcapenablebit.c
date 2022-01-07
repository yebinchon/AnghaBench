
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capenable; } ;
typedef scalar_t__ if_t ;



int
if_setcapenablebit(if_t ifp, int setcap, int clearcap)
{
 if(setcap)
  ((struct ifnet *)ifp)->if_capenable |= setcap;
 if(clearcap)
  ((struct ifnet *)ifp)->if_capenable &= ~clearcap;

 return (0);
}
