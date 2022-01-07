
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int sd_state; int sd_rebuild_pos; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_raid_subdisk* bio_caller1; int bio_offset; } ;


 scalar_t__ ENOMEM ;




 int bioq_init (struct bio_queue_head*) ;
 int bioq_insert_tail (struct bio_queue_head*,struct bio*) ;
 struct bio* bioq_takefirst (struct bio_queue_head*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_destroy_bio (struct bio*) ;
 int g_raid_iodone (struct bio*,scalar_t__) ;
 int g_raid_subdisk_iostart (struct g_raid_subdisk*,struct bio*) ;

__attribute__((used)) static void
g_raid_tr_iostart_raid1_write(struct g_raid_tr_object *tr, struct bio *bp)
{
 struct g_raid_volume *vol;
 struct g_raid_subdisk *sd;
 struct bio_queue_head queue;
 struct bio *cbp;
 int i;

 vol = tr->tro_volume;





 bioq_init(&queue);
 for (i = 0; i < vol->v_disks_count; i++) {
  sd = &vol->v_subdisks[i];
  switch (sd->sd_state) {
  case 131:
   break;
  case 130:





   if (bp->bio_offset >= sd->sd_rebuild_pos)
    continue;
   break;
  case 128:
  case 129:






   break;
  default:
   continue;
  }
  cbp = g_clone_bio(bp);
  if (cbp == ((void*)0))
   goto failure;
  cbp->bio_caller1 = sd;
  bioq_insert_tail(&queue, cbp);
 }
 while ((cbp = bioq_takefirst(&queue)) != ((void*)0)) {
  sd = cbp->bio_caller1;
  cbp->bio_caller1 = ((void*)0);
  g_raid_subdisk_iostart(sd, cbp);
 }
 return;
failure:
 while ((cbp = bioq_takefirst(&queue)) != ((void*)0))
  g_destroy_bio(cbp);
 if (bp->bio_error == 0)
  bp->bio_error = ENOMEM;
 g_raid_iodone(bp, bp->bio_error);
}
