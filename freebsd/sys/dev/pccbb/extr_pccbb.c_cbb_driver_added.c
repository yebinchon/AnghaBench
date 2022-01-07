
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int intrhand; } ;
typedef int driver_t ;
typedef int device_t ;


 int DEVICE_IDENTIFY (int *,int ) ;
 scalar_t__ DS_NOTPRESENT ;
 int M_TEMP ;
 int device_get_children (int ,int **,int*) ;
 struct cbb_softc* device_get_softc (int ) ;
 scalar_t__ device_get_state (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ device_probe_and_attach (int ) ;
 int free (int *,int ) ;
 int wakeup (int *) ;

void
cbb_driver_added(device_t brdev, driver_t *driver)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 device_t *devlist;
 device_t dev;
 int tmp;
 int numdevs;
 int wake = 0;

 DEVICE_IDENTIFY(driver, brdev);
 tmp = device_get_children(brdev, &devlist, &numdevs);
 if (tmp != 0) {
  device_printf(brdev, "Cannot get children list, no reprobe\n");
  return;
 }
 for (tmp = 0; tmp < numdevs; tmp++) {
  dev = devlist[tmp];
  if (device_get_state(dev) == DS_NOTPRESENT &&
      device_probe_and_attach(dev) == 0)
   wake++;
 }
 free(devlist, M_TEMP);

 if (wake > 0)
  wakeup(&sc->intrhand);
}
