
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int v_state; int v_name; int v_softc; } ;


 int G_RAID_DEBUG1 (int ,int ,char*,int ,int ,int ) ;
 int g_raid_volume_state2str (int) ;

void
g_raid_change_volume_state(struct g_raid_volume *vol, int state)
{

 G_RAID_DEBUG1(0, vol->v_softc,
     "Volume %s state changed from %s to %s.",
     vol->v_name,
     g_raid_volume_state2str(vol->v_state),
     g_raid_volume_state2str(state));
 vol->v_state = state;
}
