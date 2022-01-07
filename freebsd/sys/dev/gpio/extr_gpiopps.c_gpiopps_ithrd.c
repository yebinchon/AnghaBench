
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_softc {int pps_mtx; int pps_state; } ;


 int PPS_CAPTUREASSERT ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pps_event (int *,int ) ;

__attribute__((used)) static void
gpiopps_ithrd(void *arg)
{
 struct pps_softc *sc = arg;
 mtx_lock(&sc->pps_mtx);
 pps_event(&sc->pps_state, PPS_CAPTUREASSERT);
 mtx_unlock(&sc->pps_mtx);
}
