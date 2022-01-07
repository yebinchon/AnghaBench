
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int if_hw_tsomaxsegcount; } ;
typedef scalar_t__ if_t ;



int
if_sethwtsomaxsegcount(if_t ifp, u_int if_hw_tsomaxsegcount)
{

 ((struct ifnet *)ifp)->if_hw_tsomaxsegcount = if_hw_tsomaxsegcount;
        return (0);
}
