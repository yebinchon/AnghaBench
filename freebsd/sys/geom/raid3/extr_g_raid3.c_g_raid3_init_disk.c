
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_softc {struct g_raid3_disk* sc_disks; } ;
struct g_raid3_metadata {size_t md_no; char* md_provider; int md_syncid; int md_genid; int md_sync_offset; int md_dflags; } ;
struct TYPE_2__ {int ds_syncid; int ds_offset_done; int ds_offset; int * ds_consumer; } ;
struct g_raid3_disk {TYPE_1__ d_sync; int d_genid; int d_flags; int d_state; } ;
struct g_provider {int dummy; } ;


 int G_RAID3_DISK_FLAG_HARDCODED ;
 int G_RAID3_DISK_STATE_NONE ;
 int g_raid3_connect_disk (struct g_raid3_disk*,struct g_provider*) ;

__attribute__((used)) static struct g_raid3_disk *
g_raid3_init_disk(struct g_raid3_softc *sc, struct g_provider *pp,
    struct g_raid3_metadata *md, int *errorp)
{
 struct g_raid3_disk *disk;
 int error;

 disk = &sc->sc_disks[md->md_no];
 error = g_raid3_connect_disk(disk, pp);
 if (error != 0) {
  if (errorp != ((void*)0))
   *errorp = error;
  return (((void*)0));
 }
 disk->d_state = G_RAID3_DISK_STATE_NONE;
 disk->d_flags = md->md_dflags;
 if (md->md_provider[0] != '\0')
  disk->d_flags |= G_RAID3_DISK_FLAG_HARDCODED;
 disk->d_sync.ds_consumer = ((void*)0);
 disk->d_sync.ds_offset = md->md_sync_offset;
 disk->d_sync.ds_offset_done = md->md_sync_offset;
 disk->d_genid = md->md_genid;
 disk->d_sync.ds_syncid = md->md_syncid;
 if (errorp != ((void*)0))
  *errorp = 0;
 return (disk);
}
