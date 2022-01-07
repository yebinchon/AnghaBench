
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int * pending_device; int pending_scbs; } ;


 int EBUSY ;
 int * LIST_FIRST (int *) ;
 int ahc_pause_and_flushwork (struct ahc_softc*) ;
 int ahc_shutdown (struct ahc_softc*) ;
 int ahc_unpause (struct ahc_softc*) ;

int
ahc_suspend(struct ahc_softc *ahc)
{

 ahc_pause_and_flushwork(ahc);

 if (LIST_FIRST(&ahc->pending_scbs) != ((void*)0)) {
  ahc_unpause(ahc);
  return (EBUSY);
 }
 ahc_shutdown(ahc);
 return (0);
}
