
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct g_raid_volume {int v_disks_count; scalar_t__ v_state; scalar_t__ v_tr; struct g_raid_softc* v_softc; } ;
struct g_raid_tr_raid1e_object {int trso_flags; scalar_t__ trso_stopping; scalar_t__ trso_starting; } ;
struct g_raid_subdisk {int dummy; } ;
struct g_raid_softc {int dummy; } ;


 int G_RAID_EVENT_VOLUME ;
 int G_RAID_VOLUME_E_DOWN ;
 int G_RAID_VOLUME_E_UP ;
 scalar_t__ G_RAID_VOLUME_S_ALIVE (scalar_t__) ;
 scalar_t__ G_RAID_VOLUME_S_STARTING ;
 scalar_t__ G_RAID_VOLUME_S_STOPPED ;
 int N ;
 int TR_RAID1E_F_DOING_SOME ;
 int g_raid_change_volume_state (struct g_raid_volume*,scalar_t__) ;
 int g_raid_event_send (struct g_raid_volume*,int ,int ) ;
 int g_raid_tr_raid1e_maybe_rebuild (scalar_t__,struct g_raid_subdisk*) ;
 scalar_t__ g_raid_tr_update_state_raid1e_even (struct g_raid_volume*) ;
 scalar_t__ g_raid_tr_update_state_raid1e_odd (struct g_raid_volume*) ;
 int g_raid_write_metadata (struct g_raid_softc*,struct g_raid_volume*,int *,int *) ;

__attribute__((used)) static int
g_raid_tr_update_state_raid1e(struct g_raid_volume *vol,
    struct g_raid_subdisk *sd)
{
 struct g_raid_tr_raid1e_object *trs;
 struct g_raid_softc *sc;
 u_int s;

 sc = vol->v_softc;
 trs = (struct g_raid_tr_raid1e_object *)vol->v_tr;
 if (trs->trso_stopping &&
     (trs->trso_flags & TR_RAID1E_F_DOING_SOME) == 0)
  s = G_RAID_VOLUME_S_STOPPED;
 else if (trs->trso_starting)
  s = G_RAID_VOLUME_S_STARTING;
 else {
  if ((vol->v_disks_count % N) == 0)
   s = g_raid_tr_update_state_raid1e_even(vol);
  else
   s = g_raid_tr_update_state_raid1e_odd(vol);
 }
 if (s != vol->v_state) {
  g_raid_event_send(vol, G_RAID_VOLUME_S_ALIVE(s) ?
      G_RAID_VOLUME_E_UP : G_RAID_VOLUME_E_DOWN,
      G_RAID_EVENT_VOLUME);
  g_raid_change_volume_state(vol, s);
  if (!trs->trso_starting && !trs->trso_stopping)
   g_raid_write_metadata(sc, vol, ((void*)0), ((void*)0));
 }
 if (!trs->trso_starting && !trs->trso_stopping)
  g_raid_tr_raid1e_maybe_rebuild(vol->v_tr, sd);
 return (0);
}
