
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {void (* if_init ) (void*) ;} ;
typedef scalar_t__ if_t ;



void
if_setinitfn(if_t ifp, void (*init_fn)(void *))
{
 ((struct ifnet *)ifp)->if_init = init_fn;
}
