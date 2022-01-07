
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int if_hw_tsomax; } ;
typedef scalar_t__ if_t ;



int
if_sethwtsomax(if_t ifp, u_int if_hw_tsomax)
{

 ((struct ifnet *)ifp)->if_hw_tsomax = if_hw_tsomax;
        return (0);
}
