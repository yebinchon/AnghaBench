
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_rx_ring_cnt; TYPE_1__* hn_rx_ring; int hn_vf_lock; int * hn_vf_ifp; int hn_xvf_flags; } ;
struct TYPE_2__ {int hn_rx_flags; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int HN_RX_FLAG_XPNT_VF ;
 int HN_XVFFLAG_ENABLED ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;

__attribute__((used)) static void
hn_xpnt_vf_setdisable(struct hn_softc *sc, bool clear_vf)
{
 int i;

 HN_LOCK_ASSERT(sc);


 rm_wlock(&sc->hn_vf_lock);
 sc->hn_xvf_flags &= ~HN_XVFFLAG_ENABLED;
 if (clear_vf)
  sc->hn_vf_ifp = ((void*)0);
 rm_wunlock(&sc->hn_vf_lock);

 for (i = 0; i < sc->hn_rx_ring_cnt; ++i)
  sc->hn_rx_ring[i].hn_rx_flags &= ~HN_RX_FLAG_XPNT_VF;
}
