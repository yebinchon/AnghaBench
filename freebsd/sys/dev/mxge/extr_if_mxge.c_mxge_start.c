
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtx; } ;
struct mxge_slice_state {TYPE_1__ tx; } ;
struct ifnet {TYPE_2__* if_softc; } ;
struct TYPE_4__ {struct mxge_slice_state* ss; } ;
typedef TYPE_2__ mxge_softc_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_start_locked (struct mxge_slice_state*) ;

__attribute__((used)) static void
mxge_start(struct ifnet *ifp)
{
 mxge_softc_t *sc = ifp->if_softc;
 struct mxge_slice_state *ss;


 ss = &sc->ss[0];
 mtx_lock(&ss->tx.mtx);
 mxge_start_locked(ss);
 mtx_unlock(&ss->tx.mtx);
}
