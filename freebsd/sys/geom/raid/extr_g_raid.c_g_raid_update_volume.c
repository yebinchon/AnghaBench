
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {scalar_t__ v_provider_open; scalar_t__ v_stopping; int * v_rootmount; scalar_t__ v_starting; int v_tr; int * v_provider; int v_name; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int sc_md; int sc_lock; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int *,...) ;
 int G_RAID_MD_VOLUME_EVENT (int ,struct g_raid_volume*,int) ;
 int G_RAID_TR_START (int ) ;



 int SX_XLOCKED ;
 int g_raid_destroy_provider (struct g_raid_volume*) ;
 int g_raid_destroy_volume (struct g_raid_volume*) ;
 int g_raid_launch_provider (struct g_raid_volume*) ;
 int g_raid_volume_event2str (int) ;
 int root_mount_rel (int *) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid_update_volume(struct g_raid_volume *vol, u_int event)
{
 struct g_raid_softc *sc;

 sc = vol->v_softc;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 G_RAID_DEBUG1(2, sc, "Event %s for volume %s.",
     g_raid_volume_event2str(event),
     vol->v_name);
 switch (event) {
 case 130:
  if (vol->v_provider != ((void*)0))
   g_raid_destroy_provider(vol);
  break;
 case 128:
  if (vol->v_provider == ((void*)0))
   g_raid_launch_provider(vol);
  break;
 case 129:
  if (vol->v_tr)
   G_RAID_TR_START(vol->v_tr);
  return (0);
 default:
  if (sc->sc_md)
   G_RAID_MD_VOLUME_EVENT(sc->sc_md, vol, event);
  return (0);
 }


 if (vol->v_starting) {
  vol->v_starting = 0;
  G_RAID_DEBUG1(1, sc, "root_mount_rel %p", vol->v_rootmount);
  root_mount_rel(vol->v_rootmount);
  vol->v_rootmount = ((void*)0);
 }
 if (vol->v_stopping && vol->v_provider_open == 0)
  g_raid_destroy_volume(vol);
 return (0);
}
