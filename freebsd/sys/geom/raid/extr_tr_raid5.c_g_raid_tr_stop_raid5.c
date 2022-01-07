
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int dummy; } ;
struct g_raid_tr_raid5_object {int trso_stopping; scalar_t__ trso_starting; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;


 int g_raid_tr_update_state_raid5 (struct g_raid_volume*,int *) ;

__attribute__((used)) static int
g_raid_tr_stop_raid5(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid5_object *trs;
 struct g_raid_volume *vol;

 trs = (struct g_raid_tr_raid5_object *)tr;
 vol = tr->tro_volume;
 trs->trso_starting = 0;
 trs->trso_stopping = 1;
 g_raid_tr_update_state_raid5(vol, ((void*)0));
 return (0);
}
