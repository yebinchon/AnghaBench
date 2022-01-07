
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_nrequests; int * vtscsi_sim; int vtscsi_dev; } ;
struct cam_devq {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int VTSCSI_MTX (struct vtscsi_softc*) ;
 int VTSCSI_RESERVED_REQUESTS ;
 int * cam_sim_alloc (int ,int ,char*,struct vtscsi_softc*,int ,int ,int,int,struct cam_devq*) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int vtscsi_cam_action ;
 int vtscsi_cam_poll ;

__attribute__((used)) static int
vtscsi_alloc_cam(struct vtscsi_softc *sc)
{
 device_t dev;
 struct cam_devq *devq;
 int openings;

 dev = sc->vtscsi_dev;
 openings = sc->vtscsi_nrequests - VTSCSI_RESERVED_REQUESTS;

 devq = cam_simq_alloc(openings);
 if (devq == ((void*)0)) {
  device_printf(dev, "cannot allocate SIM queue\n");
  return (ENOMEM);
 }

 sc->vtscsi_sim = cam_sim_alloc(vtscsi_cam_action, vtscsi_cam_poll,
     "vtscsi", sc, device_get_unit(dev), VTSCSI_MTX(sc), 1,
     openings, devq);
 if (sc->vtscsi_sim == ((void*)0)) {
  cam_simq_free(devq);
  device_printf(dev, "cannot allocate SIM\n");
  return (ENOMEM);
 }

 return (0);
}
