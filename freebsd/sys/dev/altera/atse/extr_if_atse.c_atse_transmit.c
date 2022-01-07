
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; struct atse_softc* if_softc; } ;
struct buf_ring {int dummy; } ;
struct atse_softc {int atse_flags; int br_mtx; struct buf_ring* br; } ;


 int ATSE_FLAGS_LINK ;
 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int atse_transmit_locked (struct ifnet*) ;
 int drbr_enqueue (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
atse_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct atse_softc *sc;
 struct buf_ring *br;
 int error;

 sc = ifp->if_softc;
 br = sc->br;

 ATSE_LOCK(sc);

 mtx_lock(&sc->br_mtx);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) != IFF_DRV_RUNNING) {
  error = drbr_enqueue(ifp, sc->br, m);
  mtx_unlock(&sc->br_mtx);
  ATSE_UNLOCK(sc);
  return (error);
 }

 if ((sc->atse_flags & ATSE_FLAGS_LINK) == 0) {
  error = drbr_enqueue(ifp, sc->br, m);
  mtx_unlock(&sc->br_mtx);
  ATSE_UNLOCK(sc);
  return (error);
 }

 error = drbr_enqueue(ifp, br, m);
 if (error) {
  mtx_unlock(&sc->br_mtx);
  ATSE_UNLOCK(sc);
  return (error);
 }
 error = atse_transmit_locked(ifp);

 mtx_unlock(&sc->br_mtx);
 ATSE_UNLOCK(sc);

 return (error);
}
