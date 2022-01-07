
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 struct vtscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int vtscsi_complete_vqs_locked (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_cam_poll(struct cam_sim *sim)
{
 struct vtscsi_softc *sc;

 sc = cam_sim_softc(sim);

 vtscsi_complete_vqs_locked(sc);
}
