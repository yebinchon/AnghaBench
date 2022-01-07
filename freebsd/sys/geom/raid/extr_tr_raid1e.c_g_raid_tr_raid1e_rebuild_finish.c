
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid_tr_raid1e_object {struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {TYPE_1__* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_rebuild_pos; scalar_t__ sd_disk; int sd_pos; TYPE_2__* sd_volume; } ;
struct TYPE_4__ {int v_name; } ;
struct TYPE_3__ {int v_softc; } ;


 int G_RAID_DEBUG1 (int ,int ,char*,int ,int ,char*) ;
 int G_RAID_SUBDISK_S_ACTIVE ;
 int g_raid_change_subdisk_state (struct g_raid_subdisk*,int ) ;
 char* g_raid_get_diskname (scalar_t__) ;
 int g_raid_tr_raid1e_rebuild_done (struct g_raid_tr_raid1e_object*) ;

__attribute__((used)) static void
g_raid_tr_raid1e_rebuild_finish(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid1e_object *trs;
 struct g_raid_subdisk *sd;

 trs = (struct g_raid_tr_raid1e_object *)tr;
 sd = trs->trso_failed_sd;
 G_RAID_DEBUG1(0, tr->tro_volume->v_softc,
     "Subdisk %s:%d-%s rebuild completed.",
     sd->sd_volume->v_name, sd->sd_pos,
     sd->sd_disk ? g_raid_get_diskname(sd->sd_disk) : "[none]");
 g_raid_change_subdisk_state(sd, G_RAID_SUBDISK_S_ACTIVE);
 sd->sd_rebuild_pos = 0;
 g_raid_tr_raid1e_rebuild_done(trs);
}
