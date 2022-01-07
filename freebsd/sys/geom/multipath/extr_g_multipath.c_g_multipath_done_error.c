
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {char* name; } ;
struct g_multipath_softc {char* sc_name; int sc_mtx; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {int index; int private; struct g_provider* provider; } ;
struct bio {int bio_error; uintptr_t bio_children; int bio_inbed; scalar_t__ bio_driver1; struct g_consumer* bio_from; TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int MP_FAIL ;
 int MP_LOST ;
 int MP_POSTED ;
 int M_WAITOK ;
 int g_destroy_bio (struct bio*) ;
 int g_mpd ;
 int g_multipath_fault (struct g_consumer*,int) ;
 int g_multipath_start (struct bio*) ;
 int g_post_event (int ,struct g_consumer*,int ,int *) ;
 int g_std_done (struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,char*,char*) ;

__attribute__((used)) static void
g_multipath_done_error(struct bio *bp)
{
 struct bio *pbp;
 struct g_geom *gp;
 struct g_multipath_softc *sc;
 struct g_consumer *cp;
 struct g_provider *pp;
 uintptr_t *cnt;
 pbp = bp->bio_parent;
 gp = pbp->bio_to->geom;
 sc = gp->softc;
 cp = bp->bio_from;
 pp = cp->provider;
 cnt = (uintptr_t *)&cp->private;

 mtx_lock(&sc->sc_mtx);
 if ((cp->index & MP_FAIL) == 0) {
  printf("GEOM_MULTIPATH: Error %d, %s in %s marked FAIL\n",
      bp->bio_error, pp->name, sc->sc_name);
  g_multipath_fault(cp, MP_FAIL);
 }
 (*cnt)--;
 if (*cnt == 0 && (cp->index & (MP_LOST | MP_POSTED)) == MP_LOST) {
  cp->index |= MP_POSTED;
  mtx_unlock(&sc->sc_mtx);
  g_post_event(g_mpd, cp, M_WAITOK, ((void*)0));
 } else
  mtx_unlock(&sc->sc_mtx);




 if (pbp->bio_children < (uintptr_t)pbp->bio_driver1) {
  pbp->bio_inbed++;
  g_destroy_bio(bp);
  g_multipath_start(pbp);
 } else {
  g_std_done(bp);
 }
}
