
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DEFAULT_VNET (int ) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int NG_BTSOCKET_WARN_LEVEL ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int curvnet ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_btsocket_rfcomm_debug_level ;
 int ng_btsocket_rfcomm_sessions ;
 int ng_btsocket_rfcomm_sessions_mtx ;
 int ng_btsocket_rfcomm_sessions_task ;
 int ng_btsocket_rfcomm_sockets ;
 int ng_btsocket_rfcomm_sockets_mtx ;
 int ng_btsocket_rfcomm_task ;
 int ng_btsocket_rfcomm_timo ;

void
ng_btsocket_rfcomm_init(void)
{


 if (!IS_DEFAULT_VNET(curvnet))
  return;

 ng_btsocket_rfcomm_debug_level = NG_BTSOCKET_WARN_LEVEL;
 ng_btsocket_rfcomm_timo = 60;


 TASK_INIT(&ng_btsocket_rfcomm_task, 0,
  ng_btsocket_rfcomm_sessions_task, ((void*)0));


 LIST_INIT(&ng_btsocket_rfcomm_sessions);
 mtx_init(&ng_btsocket_rfcomm_sessions_mtx,
  "btsocks_rfcomm_sessions_mtx", ((void*)0), MTX_DEF);


 LIST_INIT(&ng_btsocket_rfcomm_sockets);
 mtx_init(&ng_btsocket_rfcomm_sockets_mtx,
  "btsocks_rfcomm_sockets_mtx", ((void*)0), MTX_DEF);
}
