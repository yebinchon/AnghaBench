
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsi_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 struct vscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int vscsi_check_response_queue (struct vscsi_softc*) ;

__attribute__((used)) static void
vscsi_cam_poll(struct cam_sim *sim)
{
 struct vscsi_softc *sc = cam_sim_softc(sim);

 vscsi_check_response_queue(sc);
}
