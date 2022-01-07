
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int state; int softcallout; int callout; int bdev; int dev; int intr; int ih; int evdev_a; int evdev_r; } ;
typedef int device_t ;


 int EBUSY ;
 int KBDC_RID_AUX ;
 int PSM_OPEN ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int destroy_dev (int ) ;
 struct psm_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;

__attribute__((used)) static int
psmdetach(device_t dev)
{
 struct psm_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 if (sc->state & PSM_OPEN)
  return (EBUSY);






 rid = KBDC_RID_AUX;
 bus_teardown_intr(dev, sc->intr, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, rid, sc->intr);

 destroy_dev(sc->dev);
 destroy_dev(sc->bdev);

 callout_drain(&sc->callout);
 callout_drain(&sc->softcallout);

 return (0);
}
