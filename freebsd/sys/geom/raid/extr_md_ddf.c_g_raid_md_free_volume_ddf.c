
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int * v_md_data; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_ddf_pervolume {int pv_started; int pv_start_co; int pv_meta; } ;
struct g_raid_md_ddf_object {int mdio_starting; } ;


 int M_MD_DDF ;
 int callout_stop (int *) ;
 int ddf_vol_meta_free (int *) ;
 int free (struct g_raid_md_ddf_pervolume*,int ) ;

__attribute__((used)) static int
g_raid_md_free_volume_ddf(struct g_raid_md_object *md,
    struct g_raid_volume *vol)
{
 struct g_raid_md_ddf_object *mdi;
 struct g_raid_md_ddf_pervolume *pv;

 mdi = (struct g_raid_md_ddf_object *)md;
 pv = (struct g_raid_md_ddf_pervolume *)vol->v_md_data;
 ddf_vol_meta_free(&pv->pv_meta);
 if (!pv->pv_started) {
  pv->pv_started = 1;
  mdi->mdio_starting--;
  callout_stop(&pv->pv_start_co);
 }
 free(pv, M_MD_DDF);
 vol->v_md_data = ((void*)0);
 return (0);
}
