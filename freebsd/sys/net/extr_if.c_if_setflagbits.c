
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
typedef scalar_t__ if_t ;



int
if_setflagbits(if_t ifp, int set, int clear)
{
 ((struct ifnet *)ifp)->if_flags |= set;
 ((struct ifnet *)ifp)->if_flags &= ~clear;

 return (0);
}
