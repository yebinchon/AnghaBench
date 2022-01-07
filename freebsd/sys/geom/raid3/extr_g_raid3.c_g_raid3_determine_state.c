
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct g_raid3_softc {scalar_t__ sc_syncid; int sc_flags; int sc_name; } ;
struct TYPE_2__ {scalar_t__ ds_syncid; scalar_t__ ds_offset_done; scalar_t__ ds_offset; } ;
struct g_raid3_disk {int d_flags; TYPE_1__ d_sync; struct g_raid3_softc* d_softc; } ;


 int G_RAID3_DEBUG (int,char*,int ,int ) ;
 int G_RAID3_DEVICE_FLAG_NOAUTOSYNC ;
 int G_RAID3_DISK_FLAG_FORCE_SYNC ;
 int G_RAID3_DISK_FLAG_SYNCHRONIZING ;
 int G_RAID3_DISK_STATE_ACTIVE ;
 int G_RAID3_DISK_STATE_NONE ;
 int G_RAID3_DISK_STATE_STALE ;
 int G_RAID3_DISK_STATE_SYNCHRONIZING ;
 int g_raid3_destroy_disk (struct g_raid3_disk*) ;
 int g_raid3_disk_state2str (int ) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;

__attribute__((used)) static u_int
g_raid3_determine_state(struct g_raid3_disk *disk)
{
 struct g_raid3_softc *sc;
 u_int state;

 sc = disk->d_softc;
 if (sc->sc_syncid == disk->d_sync.ds_syncid) {
  if ((disk->d_flags &
      G_RAID3_DISK_FLAG_SYNCHRONIZING) == 0) {

   state = G_RAID3_DISK_STATE_ACTIVE;
  } else {
   if ((sc->sc_flags &
        G_RAID3_DEVICE_FLAG_NOAUTOSYNC) == 0 ||
       (disk->d_flags &
        G_RAID3_DISK_FLAG_FORCE_SYNC) != 0) {




    state = G_RAID3_DISK_STATE_SYNCHRONIZING;
   } else {
    state = G_RAID3_DISK_STATE_STALE;
   }
  }
 } else if (disk->d_sync.ds_syncid < sc->sc_syncid) {





  disk->d_flags |= G_RAID3_DISK_FLAG_SYNCHRONIZING;
  disk->d_sync.ds_offset = 0;
  disk->d_sync.ds_offset_done = 0;
  disk->d_sync.ds_syncid = sc->sc_syncid;
  if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOAUTOSYNC) == 0 ||
      (disk->d_flags & G_RAID3_DISK_FLAG_FORCE_SYNC) != 0) {
   state = G_RAID3_DISK_STATE_SYNCHRONIZING;
  } else {
   state = G_RAID3_DISK_STATE_STALE;
  }
 } else {
  G_RAID3_DEBUG(0, "Device %s was started before the freshest "
      "disk (%s) arrives!! It will not be connected to the "
      "running device.", sc->sc_name,
      g_raid3_get_diskname(disk));
  g_raid3_destroy_disk(disk);
  state = G_RAID3_DISK_STATE_NONE;

  return (state);
 }
 G_RAID3_DEBUG(3, "State for %s disk: %s.",
     g_raid3_get_diskname(disk), g_raid3_disk_state2str(state));
 return (state);
}
