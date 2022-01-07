
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_sd {scalar_t__ drive_offset; scalar_t__ size; scalar_t__ initialized; int name; struct gv_drive* drive_sc; } ;
struct gv_plex {struct gv_softc* vinumconf; } ;
struct gv_drive {struct g_consumer* consumer; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int bio_error; int * bio_data; struct gv_sd* bio_caller1; } ;
typedef scalar_t__ off_t ;
typedef int * caddr_t ;


 int GV_EVENT_SAVE_CONFIG ;
 int GV_SD_STALE ;
 int GV_SD_UP ;
 int GV_SETSTATE_CONFIG ;
 int GV_SETSTATE_FORCE ;
 int G_VINUM_DEBUG (int,char*,int ) ;
 int KASSERT (int ,char*) ;
 int g_access (struct g_consumer*,int ,int,int ) ;
 int g_destroy_bio (struct bio*) ;
 int g_free (int *) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gv_init_request (struct gv_sd*,scalar_t__,int *,scalar_t__) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_softc*,int *,int ,int ) ;
 int gv_set_sd_state (struct gv_sd*,int ,int) ;

void
gv_init_complete(struct gv_plex *p, struct bio *bp)
{
 struct gv_softc *sc;
 struct gv_drive *d;
 struct g_consumer *cp;
 struct gv_sd *s;
 off_t start, length;
 caddr_t data;
 int error;

 s = bp->bio_caller1;
 start = bp->bio_offset;
 length = bp->bio_length;
 error = bp->bio_error;
 data = bp->bio_data;

 KASSERT(s != ((void*)0), ("gv_init_complete: NULL s"));
 d = s->drive_sc;
 KASSERT(d != ((void*)0), ("gv_init_complete: NULL d"));
 cp = d->consumer;
 KASSERT(cp != ((void*)0), ("gv_init_complete: NULL cp"));
 sc = p->vinumconf;
 KASSERT(sc != ((void*)0), ("gv_init_complete: NULL sc"));

 g_destroy_bio(bp);






 if (start >= s->drive_offset + s->size) {

  if (data != ((void*)0))
   g_free(data);
  g_topology_assert_not();
  g_topology_lock();
  g_access(cp, 0, -1, 0);
  g_topology_unlock();
  if (error) {
   gv_set_sd_state(s, GV_SD_STALE, GV_SETSTATE_FORCE |
       GV_SETSTATE_CONFIG);
  } else {
   gv_set_sd_state(s, GV_SD_UP, GV_SETSTATE_CONFIG);
   s->initialized = 0;
   gv_post_event(sc, GV_EVENT_SAVE_CONFIG, sc, ((void*)0), 0, 0);
   G_VINUM_DEBUG(1, "subdisk '%s' init: finished "
       "successfully", s->name);
  }
  return;
 }
 s->initialized += length;
 start += length;
 gv_init_request(s, start, data, length);
}
