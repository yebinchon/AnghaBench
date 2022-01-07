
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_mtu; } ;
typedef scalar_t__ if_t ;



int
if_setmtu(if_t ifp, int mtu)
{
 ((struct ifnet *)ifp)->if_mtu = mtu;
 return (0);
}
