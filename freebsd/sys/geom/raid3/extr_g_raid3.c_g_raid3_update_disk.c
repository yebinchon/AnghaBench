
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct g_raid3_softc {int sc_flags; int sc_bump_id; int sc_name; int sc_state; int * sc_provider; int sc_lock; } ;
struct TYPE_2__ {int ds_offset_done; int ds_offset; } ;
struct g_raid3_disk {int d_state; int d_flags; TYPE_1__ d_sync; struct g_raid3_softc* d_softc; } ;


 int DISK_STATE_CHANGED () ;
 int G_RAID3_BUMP_SYNCID ;
 int G_RAID3_DEBUG (int,char*,int ,int ,...) ;
 int G_RAID3_DEVICE_FLAG_NOAUTOSYNC ;
 int G_RAID3_DEVICE_STATE_COMPLETE ;
 int G_RAID3_DEVICE_STATE_DEGRADED ;
 int G_RAID3_DEVICE_STATE_STARTING ;
 int G_RAID3_DISK_FLAG_DIRTY ;
 int G_RAID3_DISK_FLAG_FORCE_SYNC ;
 int G_RAID3_DISK_FLAG_SYNCHRONIZING ;



 int G_RAID3_DISK_STATE_NONE ;


 int KASSERT (int,char*) ;
 int SX_XLOCKED ;
 int g_raid3_destroy_disk (struct g_raid3_disk*) ;
 int g_raid3_determine_state (struct g_raid3_disk*) ;
 int g_raid3_device_state2str (int ) ;
 int g_raid3_disk_state2str (int) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_sync_start (struct g_raid3_softc*) ;
 int g_raid3_sync_stop (struct g_raid3_softc*,int ) ;
 int g_raid3_update_idle (struct g_raid3_softc*,struct g_raid3_disk*) ;
 int g_raid3_update_metadata (struct g_raid3_disk*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid3_update_disk(struct g_raid3_disk *disk, u_int state)
{
 struct g_raid3_softc *sc;

 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

again:
 G_RAID3_DEBUG(3, "Changing disk %s state from %s to %s.",
     g_raid3_get_diskname(disk), g_raid3_disk_state2str(disk->d_state),
     g_raid3_disk_state2str(state));
 switch (state) {
 case 130:





  KASSERT(disk->d_state == G_RAID3_DISK_STATE_NONE,
      ("Wrong disk state (%s, %s).", g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  DISK_STATE_CHANGED();

  disk->d_state = state;
  G_RAID3_DEBUG(1, "Device %s: provider %s detected.",
      sc->sc_name, g_raid3_get_diskname(disk));
  if (sc->sc_state == G_RAID3_DEVICE_STATE_STARTING)
   break;
  KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED ||
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE,
      ("Wrong device state (%s, %s, %s, %s).", sc->sc_name,
      g_raid3_device_state2str(sc->sc_state),
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  state = g_raid3_determine_state(disk);
  if (state != G_RAID3_DISK_STATE_NONE)
   goto again;
  break;
 case 132:





  KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED ||
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE,
      ("Wrong device state (%s, %s, %s, %s).", sc->sc_name,
      g_raid3_device_state2str(sc->sc_state),
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));

  KASSERT(disk->d_state == 130 ||
      disk->d_state == 128,
      ("Wrong disk state (%s, %s).", g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  DISK_STATE_CHANGED();

  if (disk->d_state == 128) {
   disk->d_flags &= ~G_RAID3_DISK_FLAG_SYNCHRONIZING;
   disk->d_flags &= ~G_RAID3_DISK_FLAG_FORCE_SYNC;
   g_raid3_sync_stop(sc, 0);
  }
  disk->d_state = state;
  disk->d_sync.ds_offset = 0;
  disk->d_sync.ds_offset_done = 0;
  g_raid3_update_idle(sc, disk);
  g_raid3_update_metadata(disk);
  G_RAID3_DEBUG(1, "Device %s: provider %s activated.",
      sc->sc_name, g_raid3_get_diskname(disk));
  break;
 case 129:





  KASSERT(disk->d_state == 130,
      ("Wrong disk state (%s, %s).", g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED ||
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE,
      ("Wrong device state (%s, %s, %s, %s).", sc->sc_name,
      g_raid3_device_state2str(sc->sc_state),
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));




  KASSERT((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOAUTOSYNC) != 0,
      ("Wrong device state (%s, %s, %s, %s).", sc->sc_name,
      g_raid3_device_state2str(sc->sc_state),
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  DISK_STATE_CHANGED();

  disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
  disk->d_state = state;
  g_raid3_update_metadata(disk);
  G_RAID3_DEBUG(0, "Device %s: provider %s is stale.",
      sc->sc_name, g_raid3_get_diskname(disk));
  break;
 case 128:





  KASSERT(disk->d_state == 130,
      ("Wrong disk state (%s, %s).", g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED ||
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE,
      ("Wrong device state (%s, %s, %s, %s).", sc->sc_name,
      g_raid3_device_state2str(sc->sc_state),
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
  DISK_STATE_CHANGED();

  if (disk->d_state == 130)
   disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
  disk->d_state = state;
  if (sc->sc_provider != ((void*)0)) {
   g_raid3_sync_start(sc);
   g_raid3_update_metadata(disk);
  }
  break;
 case 131:






  if (sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED ||
      sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE) {




   KASSERT(disk->d_state == 132 ||
       disk->d_state == 129 ||
       disk->d_state == 128,
       ("Wrong disk state (%s, %s).",
       g_raid3_get_diskname(disk),
       g_raid3_disk_state2str(disk->d_state)));
  } else if (sc->sc_state == G_RAID3_DEVICE_STATE_STARTING) {

   KASSERT(disk->d_state == 130,
       ("Wrong disk state (%s, %s).",
       g_raid3_get_diskname(disk),
       g_raid3_disk_state2str(disk->d_state)));




   if ((sc->sc_bump_id & G_RAID3_BUMP_SYNCID) != 0)
    sc->sc_bump_id &= ~G_RAID3_BUMP_SYNCID;
  }
  DISK_STATE_CHANGED();
  G_RAID3_DEBUG(0, "Device %s: provider %s disconnected.",
      sc->sc_name, g_raid3_get_diskname(disk));

  g_raid3_destroy_disk(disk);
  break;
 default:
  KASSERT(1 == 0, ("Unknown state (%u).", state));
  break;
 }
 return (0);
}
