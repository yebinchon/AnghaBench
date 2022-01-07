
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int ahd_intr (int ) ;
 int cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
ahd_poll(struct cam_sim *sim)
{
 ahd_intr(cam_sim_softc(sim));
}
