
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_tr_object {int tro_volume; } ;
struct g_raid_subdisk {int dummy; } ;


 int g_raid_tr_update_state_raid1 (int ,struct g_raid_subdisk*) ;

__attribute__((used)) static int
g_raid_tr_event_raid1(struct g_raid_tr_object *tr,
    struct g_raid_subdisk *sd, u_int event)
{

 g_raid_tr_update_state_raid1(tr->tro_volume, sd);
 return (0);
}
