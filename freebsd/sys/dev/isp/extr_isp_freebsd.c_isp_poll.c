
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
typedef int ispsoftc_t ;


 int ISP_RUN_ISR (int *) ;
 int * cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
isp_poll(struct cam_sim *sim)
{
 ispsoftc_t *isp = cam_sim_softc(sim);

 ISP_RUN_ISR(isp);
}
