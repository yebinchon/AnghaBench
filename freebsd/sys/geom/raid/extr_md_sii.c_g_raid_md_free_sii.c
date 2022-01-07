
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_sii_object {int * mdio_meta; int * mdio_rootmount; int mdio_start_co; scalar_t__ mdio_started; } ;
struct g_raid_md_object {int mdo_softc; } ;


 int G_RAID_DEBUG1 (int,int ,char*,int *) ;
 int M_MD_SII ;
 int callout_stop (int *) ;
 int free (int *,int ) ;
 int root_mount_rel (int *) ;

__attribute__((used)) static int
g_raid_md_free_sii(struct g_raid_md_object *md)
{
 struct g_raid_md_sii_object *mdi;

 mdi = (struct g_raid_md_sii_object *)md;
 if (!mdi->mdio_started) {
  mdi->mdio_started = 0;
  callout_stop(&mdi->mdio_start_co);
  G_RAID_DEBUG1(1, md->mdo_softc,
      "root_mount_rel %p", mdi->mdio_rootmount);
  root_mount_rel(mdi->mdio_rootmount);
  mdi->mdio_rootmount = ((void*)0);
 }
 if (mdi->mdio_meta != ((void*)0)) {
  free(mdi->mdio_meta, M_MD_SII);
  mdi->mdio_meta = ((void*)0);
 }
 return (0);
}
