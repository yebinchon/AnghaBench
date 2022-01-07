
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capabilities; } ;
typedef scalar_t__ if_t ;



int
if_setcapabilitiesbit(if_t ifp, int setbit, int clearbit)
{
 ((struct ifnet *)ifp)->if_capabilities |= setbit;
 ((struct ifnet *)ifp)->if_capabilities &= ~clearbit;

 return (0);
}
