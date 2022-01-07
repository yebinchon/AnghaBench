
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {scalar_t__ v_md_data; } ;
struct g_raid_md_promise_pervolume {int pv_started; } ;
struct g_raid_md_object {int dummy; } ;



 int g_raid_md_promise_start (struct g_raid_volume*) ;

__attribute__((used)) static int
g_raid_md_volume_event_promise(struct g_raid_md_object *md,
    struct g_raid_volume *vol, u_int event)
{
 struct g_raid_md_promise_pervolume *pv;

 pv = (struct g_raid_md_promise_pervolume *)vol->v_md_data;
 switch (event) {
 case 128:
  if (!pv->pv_started)
   g_raid_md_promise_start(vol);
  return (0);
 }
 return (-2);
}
