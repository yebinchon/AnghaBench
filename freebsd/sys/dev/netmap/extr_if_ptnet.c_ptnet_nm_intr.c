
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptnet_softc {int num_rings; struct ptnet_queue* queues; } ;
struct ptnet_queue {TYPE_1__* atok; } ;
struct netmap_adapter {int ifp; } ;
struct TYPE_2__ {int appl_need_kick; } ;


 struct ptnet_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
ptnet_nm_intr(struct netmap_adapter *na, int onoff)
{
 struct ptnet_softc *sc = if_getsoftc(na->ifp);
 int i;

 for (i = 0; i < sc->num_rings; i++) {
  struct ptnet_queue *pq = sc->queues + i;
  pq->atok->appl_need_kick = onoff;
 }
}
