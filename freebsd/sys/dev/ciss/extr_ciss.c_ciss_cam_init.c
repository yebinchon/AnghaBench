
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ciss_softc {int ciss_max_logical_bus; int ciss_max_physical_bus; int ciss_mtx; int ciss_dev; int ** ciss_cam_sim; int * ciss_cam_devq; scalar_t__ ciss_max_requests; TYPE_2__* ciss_controllers; } ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {scalar_t__ bus; } ;
struct TYPE_4__ {TYPE_1__ physical; } ;


 int CISS_MALLOC_CLASS ;
 int CISS_PHYSICAL_BASE ;
 int ENOMEM ;
 int ENXIO ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* cam_sim_alloc (int ,int ,char*,struct ciss_softc*,int ,int *,int,scalar_t__,int *) ;
 int * cam_simq_alloc (scalar_t__) ;
 int ciss_cam_action ;
 int ciss_cam_poll ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 int debug_called (int) ;
 int device_get_unit (int ) ;
 int ** malloc (int,int ,int) ;
 int max (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ xpt_bus_register (int *,int ,int) ;

__attribute__((used)) static int
ciss_cam_init(struct ciss_softc *sc)
{
    int i, maxbus;

    debug_called(1);





    if ((sc->ciss_cam_devq = cam_simq_alloc(sc->ciss_max_requests - 2)) == ((void*)0)) {
 ciss_printf(sc, "can't allocate CAM SIM queue\n");
 return(ENOMEM);
    }
    maxbus = max(sc->ciss_max_logical_bus, sc->ciss_max_physical_bus +
   CISS_PHYSICAL_BASE);
    sc->ciss_cam_sim = malloc(maxbus * sizeof(struct cam_sim*),
         CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO);
    if (sc->ciss_cam_sim == ((void*)0)) {
 ciss_printf(sc, "can't allocate memory for controller SIM\n");
 return(ENOMEM);
    }

    for (i = 0; i < sc->ciss_max_logical_bus; i++) {
 if ((sc->ciss_cam_sim[i] = cam_sim_alloc(ciss_cam_action, ciss_cam_poll,
       "ciss", sc,
       device_get_unit(sc->ciss_dev),
       &sc->ciss_mtx,
       2,
       sc->ciss_max_requests - 2,
       sc->ciss_cam_devq)) == ((void*)0)) {
     ciss_printf(sc, "can't allocate CAM SIM for controller %d\n", i);
     return(ENOMEM);
 }




 mtx_lock(&sc->ciss_mtx);
 if (i == 0 || sc->ciss_controllers[i].physical.bus != 0) {
     if (xpt_bus_register(sc->ciss_cam_sim[i], sc->ciss_dev, i) != 0) {
  ciss_printf(sc, "can't register SCSI bus %d\n", i);
  mtx_unlock(&sc->ciss_mtx);
  return (ENXIO);
     }
 }
 mtx_unlock(&sc->ciss_mtx);
    }

    for (i = CISS_PHYSICAL_BASE; i < sc->ciss_max_physical_bus +
  CISS_PHYSICAL_BASE; i++) {
 if ((sc->ciss_cam_sim[i] = cam_sim_alloc(ciss_cam_action, ciss_cam_poll,
       "ciss", sc,
       device_get_unit(sc->ciss_dev),
       &sc->ciss_mtx, 1,
       sc->ciss_max_requests - 2,
       sc->ciss_cam_devq)) == ((void*)0)) {
     ciss_printf(sc, "can't allocate CAM SIM for controller %d\n", i);
     return (ENOMEM);
 }

 mtx_lock(&sc->ciss_mtx);
 if (xpt_bus_register(sc->ciss_cam_sim[i], sc->ciss_dev, i) != 0) {
     ciss_printf(sc, "can't register SCSI bus %d\n", i);
     mtx_unlock(&sc->ciss_mtx);
     return (ENXIO);
 }
 mtx_unlock(&sc->ciss_mtx);
    }

    return(0);
}
