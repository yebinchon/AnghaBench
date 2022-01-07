
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_subdisk {int sd_state; scalar_t__ sd_disk; int sd_pos; TYPE_1__* sd_volume; int sd_softc; } ;
struct TYPE_2__ {int v_name; } ;


 int G_RAID_DEBUG1 (int ,int ,char*,int ,int ,char*,int ,int ) ;
 char* g_raid_get_diskname (scalar_t__) ;
 int g_raid_report_disk_state (scalar_t__) ;
 int g_raid_subdisk_state2str (int) ;

void
g_raid_change_subdisk_state(struct g_raid_subdisk *sd, int state)
{

 G_RAID_DEBUG1(0, sd->sd_softc,
     "Subdisk %s:%d-%s state changed from %s to %s.",
     sd->sd_volume->v_name, sd->sd_pos,
     sd->sd_disk ? g_raid_get_diskname(sd->sd_disk) : "[none]",
     g_raid_subdisk_state2str(sd->sd_state),
     g_raid_subdisk_state2str(state));
 sd->sd_state = state;
 if (sd->sd_disk)
  g_raid_report_disk_state(sd->sd_disk);
}
