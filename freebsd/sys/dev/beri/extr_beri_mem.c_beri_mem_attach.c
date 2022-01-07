
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct beri_mem_softc {TYPE_1__* mem_cdev; int * res; int mem_start; int mem_size; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {struct beri_mem_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int beri_mem_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct beri_mem_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 int mem_cdevsw ;
 int rman_get_size (int ) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
beri_mem_attach(device_t dev)
{
 struct beri_mem_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, beri_mem_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->mem_size = rman_get_size(sc->res[0]);
 sc->mem_start = rman_get_start(sc->res[0]);

 sc->mem_cdev = make_dev(&mem_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "beri_mem");

 if (sc->mem_cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sc->mem_cdev->si_drv1 = sc;

 return (0);
}
