
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_bump_id; } ;
struct g_mirror_disk {int d_flags; } ;
struct bio {scalar_t__ bio_cmd; scalar_t__ bio_error; } ;


 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_READ ;
 scalar_t__ ENXIO ;
 scalar_t__ EOPNOTSUPP ;
 int G_MIRROR_BUMP_GENID ;
 int G_MIRROR_BUMP_SYNCID ;
 int G_MIRROR_BUMP_SYNCID_NOW ;
 int G_MIRROR_DISK_FLAG_BROKEN ;
 int G_MIRROR_DISK_STATE_ACTIVE ;
 int G_MIRROR_DISK_STATE_DISCONNECTED ;
 int G_MIRROR_EVENT_DONTWAIT ;
 int G_MIRROR_LOGREQ (int,struct bio*,char*,scalar_t__) ;
 scalar_t__ g_mirror_disconnect_on_failure ;
 int g_mirror_event_send (struct g_mirror_disk*,int ,int ) ;
 int g_mirror_ndisks (struct g_mirror_softc*,int ) ;

__attribute__((used)) static void
g_mirror_regular_request_error(struct g_mirror_softc *sc,
    struct g_mirror_disk *disk, struct bio *bp)
{

 if (bp->bio_cmd == BIO_FLUSH && bp->bio_error == EOPNOTSUPP)
  return;

 if ((disk->d_flags & G_MIRROR_DISK_FLAG_BROKEN) == 0) {
  disk->d_flags |= G_MIRROR_DISK_FLAG_BROKEN;
  G_MIRROR_LOGREQ(0, bp, "Request failed (error=%d).",
      bp->bio_error);
 } else {
  G_MIRROR_LOGREQ(1, bp, "Request failed (error=%d).",
      bp->bio_error);
 }
 if (g_mirror_disconnect_on_failure &&
     g_mirror_ndisks(sc, G_MIRROR_DISK_STATE_ACTIVE) > 1) {
  if (bp->bio_error == ENXIO &&
      bp->bio_cmd == BIO_READ)
   sc->sc_bump_id |= G_MIRROR_BUMP_SYNCID;
  else if (bp->bio_error == ENXIO)
   sc->sc_bump_id |= G_MIRROR_BUMP_SYNCID_NOW;
  else
   sc->sc_bump_id |= G_MIRROR_BUMP_GENID;
  g_mirror_event_send(disk, G_MIRROR_DISK_STATE_DISCONNECTED,
      G_MIRROR_EVENT_DONTWAIT);
 }
}
