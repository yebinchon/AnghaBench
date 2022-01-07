
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siosc {TYPE_2__* chardev; TYPE_1__* known_devices; int devlist; int conf_lock; } ;
typedef int device_t ;
struct TYPE_4__ {struct siosc* si_drv1; } ;
struct TYPE_3__ {scalar_t__ type; int ldn; } ;


 int GID_WHEEL ;
 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 scalar_t__ SUPERIO_DEV_NONE ;
 int UID_ROOT ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_get_nameunit (int ) ;
 struct siosc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 TYPE_2__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int superio_add_known_child (int ,scalar_t__,int ) ;
 int superio_cdevsw ;

__attribute__((used)) static int
superio_attach(device_t dev)
{
 struct siosc *sc = device_get_softc(dev);
 int i;

 mtx_init(&sc->conf_lock, device_get_nameunit(dev), "superio", MTX_DEF);
 STAILQ_INIT(&sc->devlist);

 for (i = 0; sc->known_devices[i].type != SUPERIO_DEV_NONE; i++) {
  superio_add_known_child(dev, sc->known_devices[i].type,
      sc->known_devices[i].ldn);
 }

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 sc->chardev = make_dev(&superio_cdevsw, device_get_unit(dev),
     UID_ROOT, GID_WHEEL, 0600, "superio%d", device_get_unit(dev));
 if (sc->chardev == ((void*)0))
  device_printf(dev, "failed to create character device\n");
 else
  sc->chardev->si_drv1 = sc;
 return (0);
}
