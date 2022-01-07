
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int TRUE ;
 int ahc_intr_enable (struct ahc_softc*,int ) ;
 int ahc_reset (struct ahc_softc*,int ) ;
 int ahc_restart (struct ahc_softc*) ;

int
ahc_resume(struct ahc_softc *ahc)
{

 ahc_reset(ahc, TRUE);
 ahc_intr_enable(ahc, TRUE);
 ahc_restart(ahc);
 return (0);
}
