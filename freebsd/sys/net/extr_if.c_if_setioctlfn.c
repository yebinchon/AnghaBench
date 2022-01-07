
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {void* if_ioctl; } ;
typedef scalar_t__ if_t ;



void
if_setioctlfn(if_t ifp, int (*ioctl_fn)(if_t, u_long, caddr_t))
{
 ((struct ifnet *)ifp)->if_ioctl = (void *)ioctl_fn;
}
