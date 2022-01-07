
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {int dummy; } ;
struct g_raid_tr_object {TYPE_1__* tro_volume; } ;
struct g_raid_tr_concat_object {int trso_starting; } ;
struct TYPE_2__ {scalar_t__ v_raid_level; int v_disks_count; } ;


 int G_RAID_TR_TASTE_FAIL ;
 int G_RAID_TR_TASTE_SUCCEED ;
 scalar_t__ G_RAID_VOLUME_RL_CONCAT ;
 scalar_t__ G_RAID_VOLUME_RL_SINGLE ;
 scalar_t__ G_RAID_VOLUME_RL_UNKNOWN ;

__attribute__((used)) static int
g_raid_tr_taste_concat(struct g_raid_tr_object *tr, struct g_raid_volume *volume)
{
 struct g_raid_tr_concat_object *trs;

 trs = (struct g_raid_tr_concat_object *)tr;
 if (tr->tro_volume->v_raid_level != G_RAID_VOLUME_RL_SINGLE &&
     tr->tro_volume->v_raid_level != G_RAID_VOLUME_RL_CONCAT &&
     !(tr->tro_volume->v_disks_count == 1 &&
       tr->tro_volume->v_raid_level != G_RAID_VOLUME_RL_UNKNOWN))
  return (G_RAID_TR_TASTE_FAIL);
 trs->trso_starting = 1;
 return (G_RAID_TR_TASTE_SUCCEED);
}
