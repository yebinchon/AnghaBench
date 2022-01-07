
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {int dummy; } ;
struct g_mirror_softc {int dummy; } ;
struct g_mirror_metadata {char* md_provider; int md_mediasize; int md_balance; int md_slice; int md_all; int md_syncid; int md_genid; int md_sync_offset; int md_dflags; int md_priority; int md_did; } ;
struct TYPE_2__ {int ds_syncid; int ds_update_ts; int ds_offset_done; int ds_offset; int * ds_consumer; } ;
struct g_mirror_disk {int d_init_mediasize; int d_init_balance; int d_init_slice; int d_init_ndisks; TYPE_1__ d_sync; int d_genid; int d_flags; int d_consumer; int d_priority; int d_state; int d_id; struct g_mirror_softc* d_softc; } ;


 int ENOMEM ;
 int G_MIRROR_DISK_FLAG_CANDELETE ;
 int G_MIRROR_DISK_FLAG_HARDCODED ;
 int G_MIRROR_DISK_STATE_NONE ;
 int M_MIRROR ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct g_mirror_disk*,int ) ;
 int g_getattr (char*,int ,int*) ;
 int g_mirror_connect_disk (struct g_mirror_disk*,struct g_provider*) ;
 struct g_mirror_disk* malloc (int,int ,int) ;
 int time_uptime ;

__attribute__((used)) static struct g_mirror_disk *
g_mirror_init_disk(struct g_mirror_softc *sc, struct g_provider *pp,
    struct g_mirror_metadata *md, int *errorp)
{
 struct g_mirror_disk *disk;
 int i, error;

 disk = malloc(sizeof(*disk), M_MIRROR, M_NOWAIT | M_ZERO);
 if (disk == ((void*)0)) {
  error = ENOMEM;
  goto fail;
 }
 disk->d_softc = sc;
 error = g_mirror_connect_disk(disk, pp);
 if (error != 0)
  goto fail;
 disk->d_id = md->md_did;
 disk->d_state = G_MIRROR_DISK_STATE_NONE;
 disk->d_priority = md->md_priority;
 disk->d_flags = md->md_dflags;
 error = g_getattr("GEOM::candelete", disk->d_consumer, &i);
 if (error == 0 && i != 0)
  disk->d_flags |= G_MIRROR_DISK_FLAG_CANDELETE;
 if (md->md_provider[0] != '\0')
  disk->d_flags |= G_MIRROR_DISK_FLAG_HARDCODED;
 disk->d_sync.ds_consumer = ((void*)0);
 disk->d_sync.ds_offset = md->md_sync_offset;
 disk->d_sync.ds_offset_done = md->md_sync_offset;
 disk->d_sync.ds_update_ts = time_uptime;
 disk->d_genid = md->md_genid;
 disk->d_sync.ds_syncid = md->md_syncid;
 disk->d_init_ndisks = md->md_all;
 disk->d_init_slice = md->md_slice;
 disk->d_init_balance = md->md_balance;
 disk->d_init_mediasize = md->md_mediasize;
 if (errorp != ((void*)0))
  *errorp = 0;
 return (disk);
fail:
 if (errorp != ((void*)0))
  *errorp = error;
 if (disk != ((void*)0))
  free(disk, M_MIRROR);
 return (((void*)0));
}
