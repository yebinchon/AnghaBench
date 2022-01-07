
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct g_mirror_softc {int sc_flags; int sc_bump_id; int sc_name; int sc_lock; } ;
struct g_mirror_metadata {scalar_t__ md_mediasize; } ;
struct g_mirror_disk {int d_flags; struct g_consumer* d_consumer; struct g_mirror_softc* d_softc; } ;
struct g_consumer {int acr; int acw; int ace; TYPE_1__* provider; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ sectorsize; scalar_t__ mediasize; int name; } ;


 int DEBUG_FP ;
 int ENOSPC ;
 int G_MIRROR_BUMP_GENID ;
 int G_MIRROR_DEBUG (int,char*,int ,int ,int) ;
 int G_MIRROR_DEVICE_FLAG_WIPE ;
 int G_MIRROR_DISK_FLAG_BROKEN ;
 int G_MIRROR_DISK_STATE_ACTIVE ;
 int G_MIRROR_DISK_STATE_DISCONNECTED ;
 int G_MIRROR_EVENT_DONTWAIT ;
 int KASSERT (int,char*) ;
 int KFAIL_POINT_ERROR (int ,int ,int) ;
 int M_MIRROR ;
 int M_WAITOK ;
 int M_ZERO ;
 int SX_LOCKED ;
 int free (int *,int ) ;
 scalar_t__ g_mirror_disconnect_on_failure ;
 int g_mirror_event_send (struct g_mirror_disk*,int ,int ) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_mirror_metadata_write ;
 int g_mirror_ndisks (struct g_mirror_softc*,int ) ;
 int g_topology_assert_not () ;
 int g_write_data (struct g_consumer*,scalar_t__,int *,scalar_t__) ;
 int * malloc (size_t,int ,int) ;
 int mirror_metadata_encode (struct g_mirror_metadata*,int *) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_mirror_write_metadata(struct g_mirror_disk *disk,
    struct g_mirror_metadata *md)
{
 struct g_mirror_softc *sc;
 struct g_consumer *cp;
 off_t offset, length;
 u_char *sector;
 int error = 0;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_LOCKED);

 cp = disk->d_consumer;
 KASSERT(cp != ((void*)0), ("NULL consumer (%s).", sc->sc_name));
 KASSERT(cp->provider != ((void*)0), ("NULL provider (%s).", sc->sc_name));
 KASSERT(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
     ("Consumer %s closed? (r%dw%de%d).", cp->provider->name, cp->acr,
     cp->acw, cp->ace));
 length = cp->provider->sectorsize;
 offset = cp->provider->mediasize - length;
 sector = malloc((size_t)length, M_MIRROR, M_WAITOK | M_ZERO);
 if (md != ((void*)0) &&
     (sc->sc_flags & G_MIRROR_DEVICE_FLAG_WIPE) == 0) {



  if (offset < md->md_mediasize)
   error = ENOSPC;
  else
   mirror_metadata_encode(md, sector);
 }
 KFAIL_POINT_ERROR(DEBUG_FP, g_mirror_metadata_write, error);
 if (error == 0)
  error = g_write_data(cp, offset, sector, length);
 free(sector, M_MIRROR);
 if (error != 0) {
  if ((disk->d_flags & G_MIRROR_DISK_FLAG_BROKEN) == 0) {
   disk->d_flags |= G_MIRROR_DISK_FLAG_BROKEN;
   G_MIRROR_DEBUG(0, "Cannot write metadata on %s "
       "(device=%s, error=%d).",
       g_mirror_get_diskname(disk), sc->sc_name, error);
  } else {
   G_MIRROR_DEBUG(1, "Cannot write metadata on %s "
       "(device=%s, error=%d).",
       g_mirror_get_diskname(disk), sc->sc_name, error);
  }
  if (g_mirror_disconnect_on_failure &&
      g_mirror_ndisks(sc, G_MIRROR_DISK_STATE_ACTIVE) > 1) {
   sc->sc_bump_id |= G_MIRROR_BUMP_GENID;
   g_mirror_event_send(disk,
       G_MIRROR_DISK_STATE_DISCONNECTED,
       G_MIRROR_EVENT_DONTWAIT);
  }
 }
 return (error);
}
