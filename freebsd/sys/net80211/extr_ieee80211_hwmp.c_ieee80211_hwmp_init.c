
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tv_usec; } ;
struct TYPE_4__ {void* mpp_inact; } ;


 int IEEE80211_ACTION_CAT_MESH ;
 int IEEE80211_ACTION_MESH_HWMP ;
 int hwmp_recv_action_meshpath ;
 int ieee80211_hwmp_maxpreq_retries ;
 void* ieee80211_hwmp_net_diameter_traversaltime ;
 void* ieee80211_hwmp_pathtimeout ;
 void* ieee80211_hwmp_rannint ;
 TYPE_3__ ieee80211_hwmp_rootconfint ;
 int ieee80211_hwmp_rootconfint_internal ;
 void* ieee80211_hwmp_rootint ;
 void* ieee80211_hwmp_roottimeout ;
 int ieee80211_mesh_register_proto_path (TYPE_1__*) ;
 int ieee80211_recv_action_register (int ,int ,int ) ;
 TYPE_1__ mesh_proto_hwmp ;
 void* msecs_to_ticks (int) ;

__attribute__((used)) static void
ieee80211_hwmp_init(void)
{

 ieee80211_hwmp_pathtimeout = msecs_to_ticks(5*1000);
 ieee80211_hwmp_roottimeout = msecs_to_ticks(5*1000);
 ieee80211_hwmp_rootint = msecs_to_ticks(2*1000);
 ieee80211_hwmp_rannint = msecs_to_ticks(1*1000);
 ieee80211_hwmp_rootconfint_internal = msecs_to_ticks(2*1000);
 ieee80211_hwmp_maxpreq_retries = 3;




 ieee80211_hwmp_net_diameter_traversaltime = msecs_to_ticks(512);





 ieee80211_hwmp_rootconfint.tv_usec =
     ieee80211_hwmp_rootconfint_internal * 1000;




 ieee80211_recv_action_register(IEEE80211_ACTION_CAT_MESH,
     IEEE80211_ACTION_MESH_HWMP, hwmp_recv_action_meshpath);


 mesh_proto_hwmp.mpp_inact = msecs_to_ticks(5*1000);




 ieee80211_mesh_register_proto_path(&mesh_proto_hwmp);
}
