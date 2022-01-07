
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int cam_sim_softc (struct cam_sim*) ;
 int trm_Interrupt (int ) ;

__attribute__((used)) static void
trm_poll(struct cam_sim *psim)
{
 trm_Interrupt(cam_sim_softc(psim));
}
