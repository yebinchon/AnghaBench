
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_softc {struct g_geom* sc_geom; } ;
struct g_raid_md_object {struct g_raid_softc* mdo_softc; } ;
struct g_raid_md_nvidia_object {int mdio_volume_id; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;
typedef int name ;


 int G_RAID_MD_TASTE_FAIL ;
 int G_RAID_MD_TASTE_NEW ;
 int NVIDIANodeID ;
 int arc4rand (int *,int,int ) ;
 int atomic_fetchadd_int (int *,int) ;
 struct g_raid_softc* g_raid_create_node (struct g_class*,char*,struct g_raid_md_object*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
g_raid_md_create_nvidia(struct g_raid_md_object *md, struct g_class *mp,
    struct g_geom **gp)
{
 struct g_raid_softc *sc;
 struct g_raid_md_nvidia_object *mdi;
 char name[32];

 mdi = (struct g_raid_md_nvidia_object *)md;
 arc4rand(&mdi->mdio_volume_id, 16, 0);
 snprintf(name, sizeof(name), "NVIDIA-%d",
     atomic_fetchadd_int(&NVIDIANodeID, 1));
 sc = g_raid_create_node(mp, name, md);
 if (sc == ((void*)0))
  return (G_RAID_MD_TASTE_FAIL);
 md->mdo_softc = sc;
 *gp = sc->sc_geom;
 return (G_RAID_MD_TASTE_NEW);
}
