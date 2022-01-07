
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int MTX_DEF ;
 int SHUTDOWN_PRI_LAST ;
 int mtx_init (int *,char*,int *,int ) ;
 int poll_mtx ;
 int poll_shutdown ;
 int shutdown_post_sync ;

__attribute__((used)) static void
init_device_poll(void)
{

 mtx_init(&poll_mtx, "polling", ((void*)0), MTX_DEF);
 EVENTHANDLER_REGISTER(shutdown_post_sync, poll_shutdown, ((void*)0),
     SHUTDOWN_PRI_LAST);
}
