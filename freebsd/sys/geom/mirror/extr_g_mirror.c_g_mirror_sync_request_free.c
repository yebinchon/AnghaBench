
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bio** ds_bios; } ;
struct g_mirror_disk {TYPE_1__ d_sync; } ;
struct bio {int bio_data; scalar_t__ bio_caller1; } ;


 int KASSERT (int,char*) ;
 int M_MIRROR ;
 int free (int ,int ) ;
 int g_destroy_bio (struct bio*) ;

__attribute__((used)) static void
g_mirror_sync_request_free(struct g_mirror_disk *disk, struct bio *bp)
{
 int idx;

 if (disk != ((void*)0) && disk->d_sync.ds_bios != ((void*)0)) {
  idx = (int)(uintptr_t)bp->bio_caller1;
  KASSERT(disk->d_sync.ds_bios[idx] == bp,
      ("unexpected sync BIO at %p:%d", disk, idx));
  disk->d_sync.ds_bios[idx] = ((void*)0);
 }
 free(bp->bio_data, M_MIRROR);
 g_destroy_bio(bp);
}
