
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_hwassist; } ;
typedef scalar_t__ if_t ;



int
if_sethwassist(if_t ifp, int hwassist_bit)
{
 ((struct ifnet *)ifp)->if_hwassist = hwassist_bit;
 return (0);
}
