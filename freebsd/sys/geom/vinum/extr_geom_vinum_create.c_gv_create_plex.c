
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int flags; int plexes; int plexcount; } ;
struct gv_softc {int plexes; } ;
struct gv_plex {void* rqueue; void* wqueue; void* bqueue; int packets; int subdisks; int flags; scalar_t__ synced; struct gv_softc* vinumconf; struct gv_volume* vol_sc; int volume; int name; } ;
struct bio_queue_head {int dummy; } ;


 int GV_ERR_CREATE ;
 int GV_PLEX_ADDED ;
 int GV_PLEX_NEWBORN ;
 int GV_VOL_NEWBORN ;
 int G_VINUM_DEBUG (int ,char*,int ,int ) ;
 int KASSERT (int ,char*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct gv_plex*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int bioq_init (void*) ;
 int g_free (struct gv_plex*) ;
 void* g_malloc (int,int) ;
 struct gv_volume* gv_find_vol (struct gv_softc*,int ) ;
 int in_volume ;
 int plex ;

int
gv_create_plex(struct gv_softc *sc, struct gv_plex *p)
{
 struct gv_volume *v;

 KASSERT(p != ((void*)0), ("gv_create_plex: NULL p"));


 v = gv_find_vol(sc, p->volume);
 if (v == ((void*)0)) {
  G_VINUM_DEBUG(0, "create plex '%s': volume '%s' not found",
      p->name, p->volume);
  g_free(p);
  return (GV_ERR_CREATE);
 }
 if (!(v->flags & GV_VOL_NEWBORN))
  p->flags |= GV_PLEX_ADDED;
 p->vol_sc = v;
 v->plexcount++;
 p->vinumconf = sc;
 p->synced = 0;
 p->flags |= GV_PLEX_NEWBORN;
 LIST_INSERT_HEAD(&v->plexes, p, in_volume);
 LIST_INIT(&p->subdisks);
 TAILQ_INIT(&p->packets);
 LIST_INSERT_HEAD(&sc->plexes, p, plex);
 p->bqueue = g_malloc(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
 bioq_init(p->bqueue);
 p->wqueue = g_malloc(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
 bioq_init(p->wqueue);
 p->rqueue = g_malloc(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
 bioq_init(p->rqueue);
 return (0);
}
