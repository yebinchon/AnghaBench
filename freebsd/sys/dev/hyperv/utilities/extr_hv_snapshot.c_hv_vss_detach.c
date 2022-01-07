
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * proc_task; } ;
struct TYPE_4__ {int * proc_task; } ;
struct TYPE_6__ {int hv_appvss_dev; int hv_vss_dev; TYPE_2__ app_sc; TYPE_1__ daemon_sc; int pending_mutex; } ;
typedef TYPE_3__ hv_vss_sc ;
typedef int device_t ;


 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int SIGKILL ;
 int destroy_dev (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int hv_vss_destroy_send_receive_queue (int ) ;
 int kern_psignal (int *,int ) ;
 int mtx_destroy (int *) ;
 int vmbus_ic_detach (int ) ;

__attribute__((used)) static int
hv_vss_detach(device_t dev)
{
 hv_vss_sc *sc = (hv_vss_sc*)device_get_softc(dev);
 mtx_destroy(&sc->pending_mutex);
 if (sc->daemon_sc.proc_task != ((void*)0)) {
  PROC_LOCK(sc->daemon_sc.proc_task);
  kern_psignal(sc->daemon_sc.proc_task, SIGKILL);
  PROC_UNLOCK(sc->daemon_sc.proc_task);
 }
 if (sc->app_sc.proc_task != ((void*)0)) {
  PROC_LOCK(sc->app_sc.proc_task);
  kern_psignal(sc->app_sc.proc_task, SIGKILL);
  PROC_UNLOCK(sc->app_sc.proc_task);
 }
 hv_vss_destroy_send_receive_queue(dev);
 destroy_dev(sc->hv_vss_dev);
 destroy_dev(sc->hv_appvss_dev);
 return (vmbus_ic_detach(dev));
}
