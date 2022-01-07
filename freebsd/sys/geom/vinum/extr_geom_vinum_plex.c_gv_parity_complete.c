
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_softc {int dummy; } ;
struct gv_plex {scalar_t__ synced; int name; TYPE_1__* vol_sc; scalar_t__ size; scalar_t__ stripesize; struct gv_softc* vinumconf; } ;
struct bio {int bio_error; int bio_pflags; int bio_data; } ;
typedef int intmax_t ;
struct TYPE_2__ {int provider; } ;


 int EAGAIN ;
 int GV_BIO_MALLOC ;
 int GV_BIO_PARITY ;
 int GV_EVENT_SAVE_CONFIG ;
 int G_VINUM_DEBUG (int,char*,int ,...) ;
 int KASSERT (int ,char*) ;
 int g_destroy_bio (struct bio*) ;
 int g_free (int ) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gv_access (int ,int,int,int ) ;
 int gv_parity_request (struct gv_plex*,int,scalar_t__) ;
 int gv_post_event (struct gv_softc*,int ,struct gv_softc*,int *,int ,int ) ;

void
gv_parity_complete(struct gv_plex *p, struct bio *bp)
{
 struct gv_softc *sc;
 int error, flags;

 error = bp->bio_error;
 flags = bp->bio_pflags;
 flags &= ~GV_BIO_MALLOC;

 sc = p->vinumconf;
 KASSERT(sc != ((void*)0), ("gv_parity_complete: NULL sc"));


 if (bp->bio_pflags & GV_BIO_MALLOC)
  g_free(bp->bio_data);
 g_destroy_bio(bp);

 if (error == EAGAIN) {
  G_VINUM_DEBUG(0, "parity incorrect at offset 0x%jx",
      (intmax_t)p->synced);
 }


 if (error && !(error == EAGAIN && (flags & GV_BIO_PARITY))) {

  g_topology_assert_not();
  g_topology_lock();
  gv_access(p->vol_sc->provider, -1, -1, 0);
  g_topology_unlock();
  G_VINUM_DEBUG(0, "parity check on %s failed at 0x%jx "
      "errno %d", p->name, (intmax_t)p->synced, error);
  return;
 } else {
  p->synced += p->stripesize;
 }

 if (p->synced >= p->size) {

  g_topology_assert_not();
  g_topology_lock();
  gv_access(p->vol_sc->provider, -1, -1, 0);
  g_topology_unlock();

  G_VINUM_DEBUG(1, "parity operation on %s finished", p->name);
  p->synced = 0;
  gv_post_event(sc, GV_EVENT_SAVE_CONFIG, sc, ((void*)0), 0, 0);
  return;
 }


 gv_parity_request(p, flags, p->synced);
}
