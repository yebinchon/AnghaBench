
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int cam_sim_softc (struct cam_sim*) ;
 int ps3cdrom_intr (int ) ;

__attribute__((used)) static void
ps3cdrom_poll(struct cam_sim *sim)
{
 ps3cdrom_intr(cam_sim_softc(sim));
}
