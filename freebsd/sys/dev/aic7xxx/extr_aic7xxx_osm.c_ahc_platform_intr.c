
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int ahc_intr (struct ahc_softc*) ;
 int ahc_lock (struct ahc_softc*) ;
 int ahc_unlock (struct ahc_softc*) ;

void
ahc_platform_intr(void *arg)
{
 struct ahc_softc *ahc;

 ahc = (struct ahc_softc *)arg;
 ahc_lock(ahc);
 ahc_intr(ahc);
 ahc_unlock(ahc);
}
