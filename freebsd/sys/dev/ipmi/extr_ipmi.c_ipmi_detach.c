
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_detaching; int ipmi_requests_lock; int ipmi_io_lock; scalar_t__ ipmi_irq; int ipmi_irq_res; scalar_t__ ipmi_kthread; int ipmi_request_added; scalar_t__ ipmi_power_cycle_tag; scalar_t__ ipmi_watchdog_tag; scalar_t__ ipmi_shutdown_tag; scalar_t__ ipmi_cdev; scalar_t__ ipmi_opened; } ;
typedef int device_t ;


 int EBUSY ;
 int EVENTHANDLER_DEREGISTER (int ,scalar_t__) ;
 int IPMI_LOCK (struct ipmi_softc*) ;
 int IPMI_UNLOCK (struct ipmi_softc*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int cv_broadcast (int *) ;
 int destroy_dev (scalar_t__) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int ipmi_release_resources (int ) ;
 int ipmi_set_watchdog (struct ipmi_softc*,int ) ;
 int msleep (scalar_t__,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int shutdown_final ;
 int shutdown_pre_sync ;
 int watchdog_list ;

int
ipmi_detach(device_t dev)
{
 struct ipmi_softc *sc;

 sc = device_get_softc(dev);


 IPMI_LOCK(sc);
 if (sc->ipmi_opened) {
  IPMI_UNLOCK(sc);
  return (EBUSY);
 }
 IPMI_UNLOCK(sc);
 if (sc->ipmi_cdev)
  destroy_dev(sc->ipmi_cdev);


 if (sc->ipmi_shutdown_tag)
  EVENTHANDLER_DEREGISTER(shutdown_pre_sync,
  sc->ipmi_shutdown_tag);
 if (sc->ipmi_watchdog_tag) {
  EVENTHANDLER_DEREGISTER(watchdog_list, sc->ipmi_watchdog_tag);
  ipmi_set_watchdog(sc, 0);
 }


 if (sc->ipmi_power_cycle_tag)
  EVENTHANDLER_DEREGISTER(shutdown_final, sc->ipmi_power_cycle_tag);



 IPMI_LOCK(sc);
 sc->ipmi_detaching = 1;
 if (sc->ipmi_kthread) {
  cv_broadcast(&sc->ipmi_request_added);
  msleep(sc->ipmi_kthread, &sc->ipmi_requests_lock, 0,
      "ipmi_wait", 0);
 }
 IPMI_UNLOCK(sc);
 if (sc->ipmi_irq)
  bus_teardown_intr(dev, sc->ipmi_irq_res, sc->ipmi_irq);

 ipmi_release_resources(dev);
 mtx_destroy(&sc->ipmi_io_lock);
 mtx_destroy(&sc->ipmi_requests_lock);
 return (0);
}
