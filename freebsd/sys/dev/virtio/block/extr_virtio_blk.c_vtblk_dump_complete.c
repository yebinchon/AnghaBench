
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_dump_queue; } ;


 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 int vtblk_done_completed (struct vtblk_softc*,int *) ;
 int vtblk_dump_flush (struct vtblk_softc*) ;

__attribute__((used)) static void
vtblk_dump_complete(struct vtblk_softc *sc)
{

 vtblk_dump_flush(sc);

 VTBLK_UNLOCK(sc);
 vtblk_done_completed(sc, &sc->vtblk_dump_queue);
 VTBLK_LOCK(sc);
}
