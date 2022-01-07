
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int wqueue; int plexes; int flags; struct gv_softc* vinumconf; } ;
struct gv_softc {int volumes; } ;
struct bio_queue_head {int dummy; } ;


 int GV_VOL_NEWBORN ;
 int KASSERT (int ,char*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct gv_volume*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int bioq_init (int ) ;
 int g_malloc (int,int) ;
 int volume ;

int
gv_create_volume(struct gv_softc *sc, struct gv_volume *v)
{
 KASSERT(v != ((void*)0), ("gv_create_volume: NULL v"));

 v->vinumconf = sc;
 v->flags |= GV_VOL_NEWBORN;
 LIST_INIT(&v->plexes);
 LIST_INSERT_HEAD(&sc->volumes, v, volume);
 v->wqueue = g_malloc(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
 bioq_init(v->wqueue);
 return (0);
}
