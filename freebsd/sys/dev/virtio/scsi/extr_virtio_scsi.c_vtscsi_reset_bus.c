
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_flags; int vtscsi_dev; int vtscsi_sim; } ;


 int AC_BUS_RESET ;
 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 int VTSCSI_FLAG_RESET ;
 int VTSCSI_LOCK_OWNED (struct vtscsi_softc*) ;
 int VTSCSI_REQUEST ;
 int VTSCSI_REQUEST_VQ ;
 int device_printf (int ,char*) ;
 int vtscsi_announce (struct vtscsi_softc*,int ,int ,int ) ;
 scalar_t__ vtscsi_bus_reset_disable ;
 int vtscsi_complete_vqs_locked (struct vtscsi_softc*) ;
 int vtscsi_drain_vqs (struct vtscsi_softc*) ;
 int vtscsi_reinit (struct vtscsi_softc*) ;
 int vtscsi_stop (struct vtscsi_softc*) ;
 scalar_t__ vtscsi_thaw_simq (struct vtscsi_softc*,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
vtscsi_reset_bus(struct vtscsi_softc *sc)
{
 int error;

 VTSCSI_LOCK_OWNED(sc);

 if (vtscsi_bus_reset_disable != 0) {
  device_printf(sc->vtscsi_dev, "bus reset disabled\n");
  return (0);
 }

 sc->vtscsi_flags |= VTSCSI_FLAG_RESET;






 vtscsi_stop(sc);
 vtscsi_complete_vqs_locked(sc);


 vtscsi_drain_vqs(sc);





 if (vtscsi_thaw_simq(sc, VTSCSI_REQUEST | VTSCSI_REQUEST_VQ) != 0)
  xpt_release_simq(sc->vtscsi_sim, 0);

 error = vtscsi_reinit(sc);
 if (error) {
  device_printf(sc->vtscsi_dev,
      "reinitialization failed, stopping device...\n");
  vtscsi_stop(sc);
 } else
  vtscsi_announce(sc, AC_BUS_RESET, CAM_TARGET_WILDCARD,
      CAM_LUN_WILDCARD);

 sc->vtscsi_flags &= ~VTSCSI_FLAG_RESET;

 return (error);
}
