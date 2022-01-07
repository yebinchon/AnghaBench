
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int vtballoon_current_npages; int vtballoon_pages; } ;


 int TAILQ_EMPTY (int *) ;
 int vtballoon_deflate (struct vtballoon_softc*,int ) ;

__attribute__((used)) static void
vtballoon_pop(struct vtballoon_softc *sc)
{

 while (!TAILQ_EMPTY(&sc->vtballoon_pages))
  vtballoon_deflate(sc, sc->vtballoon_current_npages);
}
