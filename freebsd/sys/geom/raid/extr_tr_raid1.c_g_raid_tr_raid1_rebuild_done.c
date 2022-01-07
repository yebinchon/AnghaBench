
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {int v_softc; } ;
struct TYPE_2__ {struct g_raid_volume* tro_volume; } ;
struct g_raid_tr_raid1_object {struct g_raid_subdisk* trso_failed_sd; scalar_t__ trso_recover_slabs; int trso_type; int trso_flags; int * trso_buffer; TYPE_1__ trso_base; } ;
struct g_raid_subdisk {int sd_disk; } ;


 int M_TR_RAID1 ;
 int TR_RAID1_F_DOING_SOME ;
 int TR_RAID1_NONE ;
 int free (int *,int ) ;
 int g_raid_tr_update_state_raid1 (struct g_raid_volume*,int *) ;
 int g_raid_write_metadata (int ,struct g_raid_volume*,struct g_raid_subdisk*,int ) ;

__attribute__((used)) static void
g_raid_tr_raid1_rebuild_done(struct g_raid_tr_raid1_object *trs)
{
 struct g_raid_volume *vol;
 struct g_raid_subdisk *sd;

 vol = trs->trso_base.tro_volume;
 sd = trs->trso_failed_sd;
 g_raid_write_metadata(vol->v_softc, vol, sd, sd->sd_disk);
 free(trs->trso_buffer, M_TR_RAID1);
 trs->trso_buffer = ((void*)0);
 trs->trso_flags &= ~TR_RAID1_F_DOING_SOME;
 trs->trso_type = TR_RAID1_NONE;
 trs->trso_recover_slabs = 0;
 trs->trso_failed_sd = ((void*)0);
 g_raid_tr_update_state_raid1(vol, ((void*)0));
}
