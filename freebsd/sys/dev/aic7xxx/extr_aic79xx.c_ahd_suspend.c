
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int pending_scbs; } ;


 int EBUSY ;
 int * LIST_FIRST (int *) ;
 int ahd_pause_and_flushwork (struct ahd_softc*) ;
 int ahd_shutdown (struct ahd_softc*) ;
 int ahd_unpause (struct ahd_softc*) ;

int
ahd_suspend(struct ahd_softc *ahd)
{

 ahd_pause_and_flushwork(ahd);

 if (LIST_FIRST(&ahd->pending_scbs) != ((void*)0)) {
  ahd_unpause(ahd);
  return (EBUSY);
 }
 ahd_shutdown(ahd);
 return (0);
}
