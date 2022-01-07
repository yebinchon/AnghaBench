
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {void* if_start; } ;
typedef scalar_t__ if_t ;



void
if_setstartfn(if_t ifp, void (*start_fn)(if_t))
{
 ((struct ifnet *)ifp)->if_start = (void *)start_fn;
}
