
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_hwassist; } ;
typedef scalar_t__ if_t ;



int
if_clearhwassist(if_t ifp)
{
 ((struct ifnet *)ifp)->if_hwassist = 0;
 return (0);
}
