
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ptnet_softc {int num_rings; int num_tx_rings; TYPE_4__* ptna; struct ptnet_queue* queues; } ;
struct ptnet_queue {TYPE_3__* atok; TYPE_2__* ktoa; } ;
struct netmap_adapter {scalar_t__ active_fds; TYPE_5__* ifp; } ;
typedef TYPE_5__* if_t ;
struct TYPE_11__ {int if_capenable; } ;
struct TYPE_7__ {struct netmap_adapter up; } ;
struct TYPE_10__ {scalar_t__ backend_users; TYPE_1__ hwup; } ;
struct TYPE_9__ {int appl_need_kick; } ;
struct TYPE_8__ {int kern_need_kick; } ;


 int IFCAP_POLLING ;
 int PTNETMAP_PTCTL_CREATE ;
 int PTNETMAP_PTCTL_DELETE ;
 struct ptnet_softc* if_getsoftc (TYPE_5__*) ;
 int netmap_krings_mode_commit (struct netmap_adapter*,int) ;
 int nm_clear_native_flags (struct netmap_adapter*) ;
 int nm_prinf (char*) ;
 int nm_set_native_flags (struct netmap_adapter*) ;
 int ptnet_nm_ptctl (struct ptnet_softc*,int ) ;
 int ptnet_sync_from_csb (struct ptnet_softc*,struct netmap_adapter*) ;
 int ptnet_update_vnet_hdr (struct ptnet_softc*) ;

__attribute__((used)) static int
ptnet_nm_register(struct netmap_adapter *na, int onoff)
{

 if_t ifp = na->ifp;
 struct ptnet_softc *sc = if_getsoftc(ifp);
 int native = (na == &sc->ptna->hwup.up);
 struct ptnet_queue *pq;
 int ret = 0;
 int i;

 if (!onoff) {
  sc->ptna->backend_users--;
 }







 if (native && !onoff && na->active_fds == 0) {
  nm_prinf("Exit netmap mode, re-enable interrupts");
  for (i = 0; i < sc->num_rings; i++) {
   pq = sc->queues + i;
   pq->atok->appl_need_kick = 1;
  }
 }

 if (onoff) {
  if (sc->ptna->backend_users == 0) {

   for (i = 0; i < sc->num_rings; i++) {
    pq = sc->queues + i;
    pq->ktoa->kern_need_kick = 1;
    pq->atok->appl_need_kick =
     (!(ifp->if_capenable & IFCAP_POLLING)
      && i >= sc->num_tx_rings);
   }


   ptnet_update_vnet_hdr(sc);



   ret = ptnet_nm_ptctl(sc, PTNETMAP_PTCTL_CREATE);
   if (ret) {
    return ret;
   }



   ptnet_sync_from_csb(sc, na);
  }



  if (native) {
   netmap_krings_mode_commit(na, onoff);
   nm_set_native_flags(na);
  }

 } else {
  if (native) {
   nm_clear_native_flags(na);
   netmap_krings_mode_commit(na, onoff);
  }

  if (sc->ptna->backend_users == 0) {
   ret = ptnet_nm_ptctl(sc, PTNETMAP_PTCTL_DELETE);
  }
 }

 if (onoff) {
  sc->ptna->backend_users++;
 }

 return ret;
}
