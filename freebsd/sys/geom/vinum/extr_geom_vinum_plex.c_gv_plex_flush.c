
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_plex {int rqueue; struct gv_softc* vinumconf; } ;
struct bio {int dummy; } ;


 struct bio* bioq_takefirst (int ) ;
 int gv_plex_start (struct gv_plex*,struct bio*) ;

__attribute__((used)) static void
gv_plex_flush(struct gv_plex *p)
{
 struct gv_softc *sc;
 struct bio *bp;

 sc = p->vinumconf;
 bp = bioq_takefirst(p->rqueue);
 while (bp != ((void*)0)) {
  gv_plex_start(p, bp);
  bp = bioq_takefirst(p->rqueue);
 }
}
