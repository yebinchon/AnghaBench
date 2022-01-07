
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; } ;
typedef scalar_t__ if_t ;


 int IFQ_SET_READY (int *) ;

int
if_setsendqready(if_t ifp)
{
 IFQ_SET_READY(&((struct ifnet *)ifp)->if_snd);
 return (0);
}
