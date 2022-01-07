
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int amr_done (int ) ;
 int cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
amr_cam_poll(struct cam_sim *sim)
{

 amr_done(cam_sim_softc(sim));
}
