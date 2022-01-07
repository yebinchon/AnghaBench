
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int cam_sim_softc (struct cam_sim*) ;
 int sym_intr1 (int ) ;

__attribute__((used)) static void sym_poll(struct cam_sim *sim)
{
 sym_intr1(cam_sim_softc(sim));
}
