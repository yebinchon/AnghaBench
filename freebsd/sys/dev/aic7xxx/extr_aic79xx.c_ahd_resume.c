
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int TRUE ;
 int ahd_intr_enable (struct ahd_softc*,int ) ;
 int ahd_reset (struct ahd_softc*,int ) ;
 int ahd_restart (struct ahd_softc*) ;

int
ahd_resume(struct ahd_softc *ahd)
{

 ahd_reset(ahd, TRUE);
 ahd_intr_enable(ahd, TRUE);
 ahd_restart(ahd);
 return (0);
}
