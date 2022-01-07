
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mly_softc {int mly_cam_channels; TYPE_1__* mly_controllerinfo; int mly_dev; int ** mly_cam_sim; int mly_lock; } ;
struct cam_devq {int dummy; } ;
struct TYPE_2__ {int physical_channels_present; int virtual_channels_present; int maximum_parallel_commands; } ;


 int ENOMEM ;
 int ENXIO ;
 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 void* cam_sim_alloc (int ,int ,char*,struct mly_softc*,int ,int *,int ,int,struct cam_devq*) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int debug (int,char*,int) ;
 int debug_called (int) ;
 int device_get_unit (int ) ;
 int mly_cam_action ;
 int mly_cam_poll ;
 int mly_printf (struct mly_softc*,char*) ;
 scalar_t__ testenv (char*) ;
 scalar_t__ xpt_bus_register (int *,int ,int) ;

__attribute__((used)) static int
mly_cam_attach(struct mly_softc *sc)
{
    struct cam_devq *devq;
    int chn, i;

    debug_called(1);




    if ((devq = cam_simq_alloc(sc->mly_controllerinfo->maximum_parallel_commands)) == ((void*)0)) {
 mly_printf(sc, "can't allocate CAM SIM queue\n");
 return(ENOMEM);
    }





    if (testenv("hw.mly.register_physical_channels")) {
 chn = 0;
 for (i = 0; i < sc->mly_controllerinfo->physical_channels_present; i++, chn++) {

     if ((sc->mly_cam_sim[chn] = cam_sim_alloc(mly_cam_action, mly_cam_poll, "mly", sc,
            device_get_unit(sc->mly_dev),
            &sc->mly_lock,
            sc->mly_controllerinfo->maximum_parallel_commands,
            1, devq)) == ((void*)0)) {
  return(ENOMEM);
     }
     MLY_LOCK(sc);
     if (xpt_bus_register(sc->mly_cam_sim[chn], sc->mly_dev, chn)) {
  MLY_UNLOCK(sc);
  mly_printf(sc, "CAM XPT phsyical channel registration failed\n");
  return(ENXIO);
     }
     MLY_UNLOCK(sc);
     debug(1, "registered physical channel %d", chn);
 }
    }




    chn = sc->mly_controllerinfo->physical_channels_present;
    for (i = 0; i < sc->mly_controllerinfo->virtual_channels_present; i++, chn++) {
 if ((sc->mly_cam_sim[chn] = cam_sim_alloc(mly_cam_action, mly_cam_poll, "mly", sc,
        device_get_unit(sc->mly_dev),
        &sc->mly_lock,
        sc->mly_controllerinfo->maximum_parallel_commands,
        0, devq)) == ((void*)0)) {
     return(ENOMEM);
 }
 MLY_LOCK(sc);
 if (xpt_bus_register(sc->mly_cam_sim[chn], sc->mly_dev, chn)) {
     MLY_UNLOCK(sc);
     mly_printf(sc, "CAM XPT virtual channel registration failed\n");
     return(ENXIO);
 }
 MLY_UNLOCK(sc);
 debug(1, "registered virtual channel %d", chn);
    }





    sc->mly_cam_channels = sc->mly_controllerinfo->physical_channels_present +
 sc->mly_controllerinfo->virtual_channels_present;

    return(0);
}
