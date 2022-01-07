
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 void* listen_start_eh ;
 void* listen_stop_eh ;
 int lle_event ;
 void* lle_event_eh ;
 int mtx_init (int *,char*,int *,int ) ;
 int tcp_offload_listen_start ;
 int tcp_offload_listen_stop ;
 int toe_listen_start_event ;
 int toe_listen_stop_event ;
 int toe_lle_event ;
 int toedev_list ;
 int toedev_lock ;

__attribute__((used)) static int
toecore_load(void)
{

 mtx_init(&toedev_lock, "toedev lock", ((void*)0), MTX_DEF);
 TAILQ_INIT(&toedev_list);

 listen_start_eh = EVENTHANDLER_REGISTER(tcp_offload_listen_start,
     toe_listen_start_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 listen_stop_eh = EVENTHANDLER_REGISTER(tcp_offload_listen_stop,
     toe_listen_stop_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 lle_event_eh = EVENTHANDLER_REGISTER(lle_event, toe_lle_event, ((void*)0),
     EVENTHANDLER_PRI_ANY);

 return (0);
}
