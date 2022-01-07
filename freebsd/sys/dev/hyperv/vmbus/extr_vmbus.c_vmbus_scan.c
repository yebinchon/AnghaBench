
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_dev; int vmbus_scandone; void* vmbus_subchtq; int vmbus_scandone_task; void* vmbus_devtq; } ;


 int GIANT_REQUIRED ;
 int Giant ;
 int M_WAITOK ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct vmbus_softc*) ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 void* taskqueue_create (char*,int ,int ,void**) ;
 int taskqueue_start_threads (void**,int,int ,char*) ;
 int taskqueue_thread_enqueue ;
 int vmbus_req_channels (struct vmbus_softc*) ;
 int vmbus_scan_done_task ;

__attribute__((used)) static int
vmbus_scan(struct vmbus_softc *sc)
{
 int error;




 bus_generic_probe(sc->vmbus_dev);
 bus_generic_attach(sc->vmbus_dev);





 sc->vmbus_devtq = taskqueue_create("vmbus dev", M_WAITOK,
     taskqueue_thread_enqueue, &sc->vmbus_devtq);
 taskqueue_start_threads(&sc->vmbus_devtq, 1, PI_NET, "vmbusdev");
 TASK_INIT(&sc->vmbus_scandone_task, 0, vmbus_scan_done_task, sc);






 sc->vmbus_subchtq = taskqueue_create("vmbus subch", M_WAITOK,
     taskqueue_thread_enqueue, &sc->vmbus_subchtq);
 taskqueue_start_threads(&sc->vmbus_subchtq, 1, PI_NET, "vmbussch");




 error = vmbus_req_channels(sc);
 if (error) {
  device_printf(sc->vmbus_dev, "channel request failed: %d\n",
      error);
  return (error);
 }





 GIANT_REQUIRED;
 while (!sc->vmbus_scandone)
  mtx_sleep(&sc->vmbus_scandone, &Giant, 0, "vmbusdev", 0);

 if (bootverbose) {
  device_printf(sc->vmbus_dev, "device scan, probe and attach "
      "done\n");
 }
 return (0);
}
