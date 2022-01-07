
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcnull_softc {int sc_mtx; int tick; int * devq; int * sim; int dev; } ;
typedef int sim_action_func ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 int FALSE ;
 int MTX_DEF ;
 int callout_init_mtx (int *,int *,int ) ;
 int * cam_sim_alloc (int ,int ,char*,struct mmcnull_softc*,int ,int *,int,int,int *) ;
 int cam_sim_free (int *,int ) ;
 int * cam_simq_alloc (int) ;
 int cam_simq_free (int *) ;
 struct mmcnull_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ is_sdio_mode ;
 int mmcnull_action_sd ;
 int mmcnull_action_sdio ;
 int mmcnull_poll ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
mmcnull_attach(device_t dev)
{
 struct mmcnull_softc *sc;
 sim_action_func action_func;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->sc_mtx, "mmcnullmtx", ((void*)0), MTX_DEF);

 if ((sc->devq = cam_simq_alloc(1)) == ((void*)0))
  return (ENOMEM);

 if (is_sdio_mode)
  action_func = mmcnull_action_sdio;
 else
  action_func = mmcnull_action_sd;
 sc->sim = cam_sim_alloc(action_func, mmcnull_poll, "mmcnull", sc,
    device_get_unit(dev), &sc->sc_mtx, 1, 1,
    sc->devq);

 if (sc->sim == ((void*)0)) {
  cam_simq_free(sc->devq);
  device_printf(dev, "cannot allocate CAM SIM\n");
  return (EINVAL);
 }

 mtx_lock(&sc->sc_mtx);
 if (xpt_bus_register(sc->sim, dev, 0) != 0) {
  device_printf(dev,
         "cannot register SCSI pass-through bus\n");
  cam_sim_free(sc->sim, FALSE);
  cam_simq_free(sc->devq);
  mtx_unlock(&sc->sc_mtx);
  return (EINVAL);
 }
 mtx_unlock(&sc->sc_mtx);

 callout_init_mtx(&sc->tick, &sc->sc_mtx, 0);

 device_printf(dev, "attached OK\n");

 return (0);
}
