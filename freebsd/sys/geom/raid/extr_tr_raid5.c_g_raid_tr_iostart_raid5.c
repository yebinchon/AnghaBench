
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {scalar_t__ v_state; int v_name; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct bio {int bio_cmd; } ;






 int EIO ;
 int ENODEV ;
 scalar_t__ G_RAID_VOLUME_S_SUBOPTIMAL ;
 int KASSERT (int,char*) ;
 int g_raid_iodone (struct bio*,int ) ;
 int g_raid_tr_iostart_raid5_read (struct g_raid_tr_object*,struct bio*) ;

__attribute__((used)) static void
g_raid_tr_iostart_raid5(struct g_raid_tr_object *tr, struct bio *bp)
{
 struct g_raid_volume *vol;

 vol = tr->tro_volume;
 if (vol->v_state < G_RAID_VOLUME_S_SUBOPTIMAL) {
  g_raid_iodone(bp, EIO);
  return;
 }
 switch (bp->bio_cmd) {
 case 129:
  g_raid_tr_iostart_raid5_read(tr, bp);
  break;
 case 128:
 case 131:
 case 130:
  g_raid_iodone(bp, ENODEV);
  break;
 default:
  KASSERT(1 == 0, ("Invalid command here: %u (volume=%s)",
      bp->bio_cmd, vol->v_name));
  break;
 }
}
