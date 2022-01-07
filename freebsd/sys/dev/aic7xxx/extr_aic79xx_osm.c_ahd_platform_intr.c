
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int ahd_intr (struct ahd_softc*) ;
 int ahd_lock (struct ahd_softc*) ;
 int ahd_unlock (struct ahd_softc*) ;

void
ahd_platform_intr(void *arg)
{
 struct ahd_softc *ahd;

 ahd = (struct ahd_softc *)arg;
 ahd_lock(ahd);
 ahd_intr(ahd);
 ahd_unlock(ahd);
}
