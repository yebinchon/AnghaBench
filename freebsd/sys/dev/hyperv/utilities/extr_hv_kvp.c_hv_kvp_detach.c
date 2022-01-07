
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hv_kvp_dev; int * daemon_task; } ;
typedef TYPE_1__ hv_kvp_sc ;
typedef int device_t ;


 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int SIGKILL ;
 int destroy_dev (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int kern_psignal (int *,int ) ;
 int vmbus_ic_detach (int ) ;

__attribute__((used)) static int
hv_kvp_detach(device_t dev)
{
 hv_kvp_sc *sc = (hv_kvp_sc*)device_get_softc(dev);

 if (sc->daemon_task != ((void*)0)) {
  PROC_LOCK(sc->daemon_task);
  kern_psignal(sc->daemon_task, SIGKILL);
  PROC_UNLOCK(sc->daemon_task);
 }

 destroy_dev(sc->hv_kvp_dev);
 return (vmbus_ic_detach(dev));
}
