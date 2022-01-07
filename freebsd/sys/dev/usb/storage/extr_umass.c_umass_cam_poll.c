
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umass_softc {int sc_xfer; } ;
struct cam_sim {scalar_t__ softc; } ;


 int DPRINTF (struct umass_softc*,int ,char*) ;
 int UDMASS_SCSI ;
 int UMASS_T_MAX ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
umass_cam_poll(struct cam_sim *sim)
{
 struct umass_softc *sc = (struct umass_softc *)sim->softc;

 if (sc == ((void*)0))
  return;

 DPRINTF(sc, UDMASS_SCSI, "CAM poll\n");

 usbd_transfer_poll(sc->sc_xfer, UMASS_T_MAX);
}
