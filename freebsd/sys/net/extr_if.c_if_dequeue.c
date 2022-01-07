
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_snd; } ;
typedef scalar_t__ if_t ;


 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;

struct mbuf *
if_dequeue(if_t ifp)
{
 struct mbuf *m;
 IFQ_DRV_DEQUEUE(&((struct ifnet *)ifp)->if_snd, m);

 return (m);
}
