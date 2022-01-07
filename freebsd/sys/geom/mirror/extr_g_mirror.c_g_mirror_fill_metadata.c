
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_mirror_softc {int sc_flags; int sc_sectorsize; int sc_mediasize; int sc_genid; int sc_balance; int sc_slice; int sc_ndisks; int sc_id; int sc_name; } ;
struct g_mirror_metadata {int md_mflags; int md_dflags; scalar_t__ md_provsize; int md_provider; scalar_t__ md_sync_offset; scalar_t__ md_syncid; scalar_t__ md_priority; int md_did; int md_sectorsize; int md_mediasize; int md_genid; int md_balance; int md_slice; int md_all; int md_mid; int md_name; int md_version; int md_magic; } ;
struct TYPE_4__ {scalar_t__ ds_offset_done; scalar_t__ ds_syncid; } ;
struct g_mirror_disk {int d_flags; scalar_t__ d_state; TYPE_3__* d_consumer; TYPE_1__ d_sync; scalar_t__ d_priority; int d_id; } ;
struct TYPE_6__ {TYPE_2__* provider; } ;
struct TYPE_5__ {scalar_t__ mediasize; int name; } ;


 int G_MIRROR_DEVICE_FLAG_MASK ;
 int G_MIRROR_DISK_FLAG_HARDCODED ;
 int G_MIRROR_DISK_FLAG_MASK ;
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ;
 int G_MIRROR_MAGIC ;
 int G_MIRROR_VERSION ;
 int arc4random () ;
 int bzero (int ,int) ;
 int strlcpy (int ,int ,int) ;

void
g_mirror_fill_metadata(struct g_mirror_softc *sc, struct g_mirror_disk *disk,
    struct g_mirror_metadata *md)
{

 strlcpy(md->md_magic, G_MIRROR_MAGIC, sizeof(md->md_magic));
 md->md_version = G_MIRROR_VERSION;
 strlcpy(md->md_name, sc->sc_name, sizeof(md->md_name));
 md->md_mid = sc->sc_id;
 md->md_all = sc->sc_ndisks;
 md->md_slice = sc->sc_slice;
 md->md_balance = sc->sc_balance;
 md->md_genid = sc->sc_genid;
 md->md_mediasize = sc->sc_mediasize;
 md->md_sectorsize = sc->sc_sectorsize;
 md->md_mflags = (sc->sc_flags & G_MIRROR_DEVICE_FLAG_MASK);
 bzero(md->md_provider, sizeof(md->md_provider));
 if (disk == ((void*)0)) {
  md->md_did = arc4random();
  md->md_priority = 0;
  md->md_syncid = 0;
  md->md_dflags = 0;
  md->md_sync_offset = 0;
  md->md_provsize = 0;
 } else {
  md->md_did = disk->d_id;
  md->md_priority = disk->d_priority;
  md->md_syncid = disk->d_sync.ds_syncid;
  md->md_dflags = (disk->d_flags & G_MIRROR_DISK_FLAG_MASK);
  if (disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING)
   md->md_sync_offset = disk->d_sync.ds_offset_done;
  else
   md->md_sync_offset = 0;
  if ((disk->d_flags & G_MIRROR_DISK_FLAG_HARDCODED) != 0) {
   strlcpy(md->md_provider,
       disk->d_consumer->provider->name,
       sizeof(md->md_provider));
  }
  md->md_provsize = disk->d_consumer->provider->mediasize;
 }
}
