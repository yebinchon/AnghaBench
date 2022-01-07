
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
typedef scalar_t__ if_t ;



int
if_setdrvflagbits(if_t ifp, int set_flags, int clear_flags)
{
 ((struct ifnet *)ifp)->if_drv_flags |= set_flags;
 ((struct ifnet *)ifp)->if_drv_flags &= ~clear_flags;

 return (0);
}
