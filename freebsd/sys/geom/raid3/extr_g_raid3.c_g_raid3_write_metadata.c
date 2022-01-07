
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct g_raid3_softc {scalar_t__ sc_state; int sc_bump_id; int sc_name; int sc_lock; } ;
struct g_raid3_metadata {int dummy; } ;
struct g_raid3_disk {int d_flags; struct g_consumer* d_consumer; struct g_raid3_softc* d_softc; } ;
struct g_consumer {int acr; int acw; int ace; TYPE_1__* provider; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ mediasize; scalar_t__ sectorsize; int name; } ;


 int G_RAID3_BUMP_GENID ;
 int G_RAID3_DEBUG (int,char*,int ,int ,int) ;
 scalar_t__ G_RAID3_DEVICE_STATE_COMPLETE ;
 int G_RAID3_DISK_FLAG_BROKEN ;
 int G_RAID3_DISK_STATE_DISCONNECTED ;
 int G_RAID3_EVENT_DONTWAIT ;
 int KASSERT (int,char*) ;
 int M_RAID3 ;
 int M_WAITOK ;
 int M_ZERO ;
 int SX_LOCKED ;
 int free (int *,int ) ;
 scalar_t__ g_raid3_disconnect_on_failure ;
 int g_raid3_event_send (struct g_raid3_disk*,int ,int ) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_topology_assert_not () ;
 int g_write_data (struct g_consumer*,scalar_t__,int *,scalar_t__) ;
 int * malloc (size_t,int ,int) ;
 int raid3_metadata_encode (struct g_raid3_metadata*,int *) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid3_write_metadata(struct g_raid3_disk *disk, struct g_raid3_metadata *md)
{
 struct g_raid3_softc *sc;
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
 sector = malloc((size_t)length, M_RAID3, M_WAITOK | M_ZERO);
 if (md != ((void*)0))
  raid3_metadata_encode(md, sector);
 error = g_write_data(cp, offset, sector, length);
 free(sector, M_RAID3);
 if (error != 0) {
  if ((disk->d_flags & G_RAID3_DISK_FLAG_BROKEN) == 0) {
   G_RAID3_DEBUG(0, "Cannot write metadata on %s "
       "(device=%s, error=%d).",
       g_raid3_get_diskname(disk), sc->sc_name, error);
   disk->d_flags |= G_RAID3_DISK_FLAG_BROKEN;
  } else {
   G_RAID3_DEBUG(1, "Cannot write metadata on %s "
       "(device=%s, error=%d).",
       g_raid3_get_diskname(disk), sc->sc_name, error);
  }
  if (g_raid3_disconnect_on_failure &&
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE) {
   sc->sc_bump_id |= G_RAID3_BUMP_GENID;
   g_raid3_event_send(disk,
       G_RAID3_DISK_STATE_DISCONNECTED,
       G_RAID3_EVENT_DONTWAIT);
  }
 }
 return (error);
}
