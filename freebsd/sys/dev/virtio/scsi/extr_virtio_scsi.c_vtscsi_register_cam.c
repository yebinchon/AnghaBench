
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_sim; int * vtscsi_path; int vtscsi_dev; } ;
typedef int device_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENOMEM ;
 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 int cam_sim_path (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ vtscsi_register_async (struct vtscsi_softc*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int ,int ,int ) ;
 scalar_t__ xpt_create_path (int **,int *,int ,int ,int ) ;
 int xpt_free_path (int *) ;

__attribute__((used)) static int
vtscsi_register_cam(struct vtscsi_softc *sc)
{
 device_t dev;
 int registered, error;

 dev = sc->vtscsi_dev;
 registered = 0;

 VTSCSI_LOCK(sc);

 if (xpt_bus_register(sc->vtscsi_sim, dev, 0) != CAM_SUCCESS) {
  error = ENOMEM;
  device_printf(dev, "cannot register XPT bus\n");
  goto fail;
 }

 registered = 1;

 if (xpt_create_path(&sc->vtscsi_path, ((void*)0),
     cam_sim_path(sc->vtscsi_sim), CAM_TARGET_WILDCARD,
     CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  error = ENOMEM;
  device_printf(dev, "cannot create bus path\n");
  goto fail;
 }

 if (vtscsi_register_async(sc) != CAM_REQ_CMP) {
  error = EIO;
  device_printf(dev, "cannot register async callback\n");
  goto fail;
 }

 VTSCSI_UNLOCK(sc);

 return (0);

fail:
 if (sc->vtscsi_path != ((void*)0)) {
  xpt_free_path(sc->vtscsi_path);
  sc->vtscsi_path = ((void*)0);
 }

 if (registered != 0)
  xpt_bus_deregister(cam_sim_path(sc->vtscsi_sim));

 VTSCSI_UNLOCK(sc);

 return (error);
}
