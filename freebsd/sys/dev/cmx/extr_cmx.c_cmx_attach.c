
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmx_softc {TYPE_1__* cdev; scalar_t__ dying; } ;
typedef int device_t ;
struct TYPE_2__ {struct cmx_softc* si_drv1; } ;


 int ENOMEM ;
 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int cmx_cdevsw ;
 struct cmx_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;

int
cmx_attach(device_t dev)
{
 struct cmx_softc *sc = device_get_softc(dev);

 if (!sc || sc->dying)
  return ENXIO;

 sc->cdev = make_dev(&cmx_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
                     "cmx%d", device_get_unit(dev));
 if (!sc->cdev) {
  device_printf(dev, "failed to create character device\n");
  return ENOMEM;
 }
 sc->cdev->si_drv1 = sc;

 return 0;
}
