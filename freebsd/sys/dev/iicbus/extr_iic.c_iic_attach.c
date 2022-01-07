
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iic_softc {TYPE_1__* sc_devnode; int sc_dev; } ;
typedef int device_t ;
struct TYPE_2__ {struct iic_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 struct iic_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int iic_cdevsw ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;

__attribute__((used)) static int
iic_attach(device_t dev)
{
 struct iic_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_devnode = make_dev(&iic_cdevsw, device_get_unit(dev),
   UID_ROOT, GID_WHEEL,
   0600, "iic%d", device_get_unit(dev));
 if (sc->sc_devnode == ((void*)0)) {
  device_printf(dev, "failed to create character device\n");
  return (ENXIO);
 }
 sc->sc_devnode->si_drv1 = sc;

 return (0);
}
