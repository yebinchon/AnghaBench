
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; } ;
typedef scalar_t__ if_t ;


 int IFQ_DRV_IS_EMPTY (int *) ;

int
if_sendq_empty(if_t ifp)
{
 return IFQ_DRV_IS_EMPTY(&((struct ifnet *)ifp)->if_snd);
}
