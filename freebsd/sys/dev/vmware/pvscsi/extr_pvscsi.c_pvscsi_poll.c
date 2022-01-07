
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int lock; } ;
struct cam_sim {int dummy; } ;


 int MA_OWNED ;
 struct pvscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int mtx_assert (int *,int ) ;
 int pvscsi_intr_locked (struct pvscsi_softc*) ;

__attribute__((used)) static void
pvscsi_poll(struct cam_sim *sim)
{
 struct pvscsi_softc *sc;

 sc = cam_sim_softc(sim);

 mtx_assert(&sc->lock, MA_OWNED);
 pvscsi_intr_locked(sc);
}
