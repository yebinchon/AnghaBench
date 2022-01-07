
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int * v_md_data; } ;
struct g_raid_md_promise_pervolume {int pv_started; int pv_start_co; struct g_raid_md_promise_pervolume* pv_meta; } ;
struct g_raid_md_object {int dummy; } ;


 int M_MD_PROMISE ;
 int callout_stop (int *) ;
 int free (struct g_raid_md_promise_pervolume*,int ) ;

__attribute__((used)) static int
g_raid_md_free_volume_promise(struct g_raid_md_object *md,
    struct g_raid_volume *vol)
{
 struct g_raid_md_promise_pervolume *pv;

 pv = (struct g_raid_md_promise_pervolume *)vol->v_md_data;
 if (pv && pv->pv_meta != ((void*)0)) {
  free(pv->pv_meta, M_MD_PROMISE);
  pv->pv_meta = ((void*)0);
 }
 if (pv && !pv->pv_started) {
  pv->pv_started = 1;
  callout_stop(&pv->pv_start_co);
 }
 free(pv, M_MD_PROMISE);
 vol->v_md_data = ((void*)0);
 return (0);
}
