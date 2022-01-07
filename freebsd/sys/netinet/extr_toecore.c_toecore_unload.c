
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int TAILQ_EMPTY (int *) ;
 int listen_start_eh ;
 int listen_stop_eh ;
 int lle_event ;
 int lle_event_eh ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tcp_offload_listen_start ;
 int tcp_offload_listen_stop ;
 int toedev_list ;
 int toedev_lock ;

__attribute__((used)) static int
toecore_unload(void)
{

 mtx_lock(&toedev_lock);
 if (!TAILQ_EMPTY(&toedev_list)) {
  mtx_unlock(&toedev_lock);
  return (EBUSY);
 }

 EVENTHANDLER_DEREGISTER(tcp_offload_listen_start, listen_start_eh);
 EVENTHANDLER_DEREGISTER(tcp_offload_listen_stop, listen_stop_eh);
 EVENTHANDLER_DEREGISTER(lle_event, lle_event_eh);

 mtx_unlock(&toedev_lock);
 mtx_destroy(&toedev_lock);

 return (0);
}
