
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct beri_softc {int beri_mtx; TYPE_1__ beri_rsel; TYPE_2__* cdev; int devname; int dev; int * res; int bsh; int bst; } ;
typedef int device_t ;
struct TYPE_4__ {struct beri_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int MTX_DEF ;
 int S_IRWXU ;
 int UID_ROOT ;
 int beri_cdevsw ;
 int beri_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct beri_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int knlist_init_mtx (int *,int *) ;
 TYPE_2__* make_dev (int *,int ,int ,int ,int ,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ parse_fdt (struct beri_softc*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
beri_attach(device_t dev)
{
 struct beri_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, beri_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 if (parse_fdt(sc)) {
  device_printf(sc->dev, "Can't get FDT values\n");
  return (ENXIO);
 }

 sc->cdev = make_dev(&beri_cdevsw, 0, UID_ROOT, GID_WHEEL,
     S_IRWXU, "%s", sc->devname);
 if (sc->cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sc->cdev->si_drv1 = sc;

 mtx_init(&sc->beri_mtx, "beri_mtx", ((void*)0), MTX_DEF);
 knlist_init_mtx(&sc->beri_rsel.si_note, &sc->beri_mtx);

 return (0);
}
