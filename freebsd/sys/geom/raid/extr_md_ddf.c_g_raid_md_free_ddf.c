
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_object {int mdo_softc; } ;
struct g_raid_md_ddf_object {int mdio_meta; int * mdio_rootmount; int mdio_start_co; scalar_t__ mdio_started; } ;


 int G_RAID_DEBUG1 (int,int ,char*,int *) ;
 int callout_stop (int *) ;
 int ddf_meta_free (int *) ;
 int root_mount_rel (int *) ;

__attribute__((used)) static int
g_raid_md_free_ddf(struct g_raid_md_object *md)
{
 struct g_raid_md_ddf_object *mdi;

 mdi = (struct g_raid_md_ddf_object *)md;
 if (!mdi->mdio_started) {
  mdi->mdio_started = 0;
  callout_stop(&mdi->mdio_start_co);
  G_RAID_DEBUG1(1, md->mdo_softc,
      "root_mount_rel %p", mdi->mdio_rootmount);
  root_mount_rel(mdi->mdio_rootmount);
  mdi->mdio_rootmount = ((void*)0);
 }
 ddf_meta_free(&mdi->mdio_meta);
 return (0);
}
