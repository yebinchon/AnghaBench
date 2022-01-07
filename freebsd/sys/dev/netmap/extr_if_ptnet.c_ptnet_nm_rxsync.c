
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptnet_softc {struct ptnet_queue* rxqueues; } ;
struct ptnet_queue {int ktoa; int atok; } ;
struct netmap_kring {int ring_id; TYPE_1__* na; } ;
struct TYPE_2__ {int ifp; } ;


 struct ptnet_softc* if_getsoftc (int ) ;
 int netmap_pt_guest_rxsync (int ,int ,struct netmap_kring*,int) ;
 int ptnet_kick (struct ptnet_queue*) ;

__attribute__((used)) static int
ptnet_nm_rxsync(struct netmap_kring *kring, int flags)
{
 struct ptnet_softc *sc = if_getsoftc(kring->na->ifp);
 struct ptnet_queue *pq = sc->rxqueues + kring->ring_id;
 bool notify;

 notify = netmap_pt_guest_rxsync(pq->atok, pq->ktoa, kring, flags);
 if (notify) {
  ptnet_kick(pq);
 }

 return 0;
}
