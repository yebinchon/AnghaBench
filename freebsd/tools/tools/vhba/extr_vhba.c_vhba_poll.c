
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhba_softc_t ;
struct cam_sim {int dummy; } ;


 int * cam_sim_softc (struct cam_sim*) ;
 int vhba_kick (int *) ;

__attribute__((used)) static void
vhba_poll(struct cam_sim *sim)
{
 vhba_softc_t *vhba = cam_sim_softc(sim);
 vhba_kick(vhba);
}
