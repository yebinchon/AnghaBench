
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {void* if_softc; } ;
typedef scalar_t__ if_t ;



void *
if_getsoftc(if_t ifp)
{
 return ((struct ifnet *)ifp)->if_softc;
}
