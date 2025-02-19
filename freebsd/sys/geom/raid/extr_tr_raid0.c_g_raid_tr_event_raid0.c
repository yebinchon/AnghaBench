
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {int v_name; struct g_raid_softc* v_softc; } ;
struct g_raid_tr_raid0_object {int trso_stopped; int trso_starting; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int sd_state; int sd_pos; } ;
struct g_raid_softc {int dummy; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ,int ,int ) ;
 int G_RAID_SUBDISK_S_ACTIVE ;
 int G_RAID_SUBDISK_S_FAILED ;
 int G_RAID_SUBDISK_S_NONE ;
 int g_raid_change_subdisk_state (struct g_raid_subdisk*,int) ;
 int g_raid_subdisk_state2str (int) ;
 int g_raid_tr_update_state_raid0 (struct g_raid_volume*) ;
 int g_raid_write_metadata (struct g_raid_softc*,struct g_raid_volume*,struct g_raid_subdisk*,int *) ;

__attribute__((used)) static int
g_raid_tr_event_raid0(struct g_raid_tr_object *tr,
    struct g_raid_subdisk *sd, u_int event)
{
 struct g_raid_tr_raid0_object *trs;
 struct g_raid_softc *sc;
 struct g_raid_volume *vol;
 int state;

 trs = (struct g_raid_tr_raid0_object *)tr;
 vol = tr->tro_volume;
 sc = vol->v_softc;

 state = sd->sd_state;
 if (state != G_RAID_SUBDISK_S_NONE &&
     state != G_RAID_SUBDISK_S_FAILED &&
     state != G_RAID_SUBDISK_S_ACTIVE) {
  G_RAID_DEBUG1(1, sc,
      "Promote subdisk %s:%d from %s to ACTIVE.",
      vol->v_name, sd->sd_pos,
      g_raid_subdisk_state2str(sd->sd_state));
  g_raid_change_subdisk_state(sd, G_RAID_SUBDISK_S_ACTIVE);
 }
 if (state != sd->sd_state &&
     !trs->trso_starting && !trs->trso_stopped)
  g_raid_write_metadata(sc, vol, sd, ((void*)0));
 g_raid_tr_update_state_raid0(vol);
 return (0);
}
