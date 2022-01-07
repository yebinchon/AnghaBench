
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {struct gv_plex* plex_sc; } ;
struct gv_plex {int org; struct gv_volume* vol_sc; } ;
struct bio {struct gv_sd* bio_caller1; } ;





 int KASSERT (int ,char*) ;
 int gv_plex_normal_done (struct gv_plex*,struct bio*) ;
 int gv_plex_raid5_done (struct gv_plex*,struct bio*) ;

void
gv_bio_done(struct gv_softc *sc, struct bio *bp)
{
 struct gv_volume *v;
 struct gv_plex *p;
 struct gv_sd *s;

 s = bp->bio_caller1;
 KASSERT(s != ((void*)0), ("gv_bio_done: NULL s"));
 p = s->plex_sc;
 KASSERT(p != ((void*)0), ("gv_bio_done: NULL p"));
 v = p->vol_sc;
 KASSERT(v != ((void*)0), ("gv_bio_done: NULL v"));

 switch (p->org) {
 case 130:
 case 128:
  gv_plex_normal_done(p, bp);
  break;
 case 129:
  gv_plex_raid5_done(p, bp);
  break;
 }
}
