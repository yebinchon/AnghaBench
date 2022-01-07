
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {struct g_raid_softc* v_softc; struct g_raid_md_ddf_pervolume* v_md_data; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_md_ddf_pervolume {int pv_started; } ;


 int G_RAID_DEBUG1 (int ,struct g_raid_softc*,char*) ;
 int G_RAID_EVENT_VOLUME ;
 int G_RAID_VOLUME_E_STARTMD ;
 int g_raid_event_send (struct g_raid_volume*,int ,int ) ;

__attribute__((used)) static void
g_raid_ddf_go(void *arg)
{
 struct g_raid_volume *vol;
 struct g_raid_softc *sc;
 struct g_raid_md_ddf_pervolume *pv;

 vol = arg;
 pv = vol->v_md_data;
 sc = vol->v_softc;
 if (!pv->pv_started) {
  G_RAID_DEBUG1(0, sc, "Force volume start due to timeout.");
  g_raid_event_send(vol, G_RAID_VOLUME_E_STARTMD,
      G_RAID_EVENT_VOLUME);
 }
}
