
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int dummy; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_tr_concat_object {int trso_stopped; scalar_t__ trso_starting; } ;


 int g_raid_tr_update_state_concat (struct g_raid_volume*) ;

__attribute__((used)) static int
g_raid_tr_stop_concat(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_concat_object *trs;
 struct g_raid_volume *vol;

 trs = (struct g_raid_tr_concat_object *)tr;
 vol = tr->tro_volume;
 trs->trso_starting = 0;
 trs->trso_stopped = 1;
 g_raid_tr_update_state_concat(vol);
 return (0);
}
