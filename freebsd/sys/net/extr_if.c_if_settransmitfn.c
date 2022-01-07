
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_transmit; } ;
typedef int if_transmit_fn_t ;
typedef scalar_t__ if_t ;



void
if_settransmitfn(if_t ifp, if_transmit_fn_t start_fn)
{
 ((struct ifnet *)ifp)->if_transmit = start_fn;
}
