
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int dummy; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int LIST_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int create_singlethread_workqueue (char*) ;
 int ib_register_client (int *) ;
 int maxsockets ;
 int maxsockets_change ;
 int rx_comp_wq ;
 int sdp_client ;
 int sdp_list ;
 int sdp_zone ;
 int sdp_zone_change ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static void
sdp_init(void)
{

 LIST_INIT(&sdp_list);
 sdp_zone = uma_zcreate("sdp_sock", sizeof(struct sdp_sock),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 uma_zone_set_max(sdp_zone, maxsockets);
 EVENTHANDLER_REGISTER(maxsockets_change, sdp_zone_change, ((void*)0),
  EVENTHANDLER_PRI_ANY);
 rx_comp_wq = create_singlethread_workqueue("rx_comp_wq");
 ib_register_client(&sdp_client);
}
