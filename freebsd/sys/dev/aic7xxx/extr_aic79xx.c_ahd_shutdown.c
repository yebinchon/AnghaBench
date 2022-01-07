
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int stat_timer; int reset_timer; } ;


 int FALSE ;
 int ahd_reset (struct ahd_softc*,int ) ;
 int aic_timer_stop (int *) ;

void
ahd_shutdown(void *arg)
{
 struct ahd_softc *ahd;

 ahd = (struct ahd_softc *)arg;




 aic_timer_stop(&ahd->reset_timer);
 aic_timer_stop(&ahd->stat_timer);


 ahd_reset(ahd, FALSE);
}
