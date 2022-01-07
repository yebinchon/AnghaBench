
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int wqueue; struct gv_softc* vinumconf; } ;
struct gv_softc {int dummy; } ;
struct bio {int dummy; } ;


 int KASSERT (int ,char*) ;
 struct bio* bioq_takefirst (int ) ;
 int gv_volume_start (struct gv_softc*,struct bio*) ;

void
gv_volume_flush(struct gv_volume *v)
{
 struct gv_softc *sc;
 struct bio *bp;

 KASSERT(v != ((void*)0), ("NULL v"));
 sc = v->vinumconf;
 KASSERT(sc != ((void*)0), ("NULL sc"));

 bp = bioq_takefirst(v->wqueue);
 while (bp != ((void*)0)) {
  gv_volume_start(sc, bp);
  bp = bioq_takefirst(v->wqueue);
 }
}
