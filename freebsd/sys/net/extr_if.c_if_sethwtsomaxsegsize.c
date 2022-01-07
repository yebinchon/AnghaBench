
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int if_hw_tsomaxsegsize; } ;
typedef scalar_t__ if_t ;



int
if_sethwtsomaxsegsize(if_t ifp, u_int if_hw_tsomaxsegsize)
{

 ((struct ifnet *)ifp)->if_hw_tsomaxsegsize = if_hw_tsomaxsegsize;
        return (0);
}
