
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
struct ahc_softc {int dummy; } ;


 int ahc_intr (struct ahc_softc*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
ahc_poll(struct cam_sim *sim)
{
 struct ahc_softc *ahc;

 ahc = (struct ahc_softc *)cam_sim_softc(sim);
 ahc_intr(ahc);
}
