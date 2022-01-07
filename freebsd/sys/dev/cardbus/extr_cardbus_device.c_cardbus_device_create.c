
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct cardbus_softc {int sc_dev; } ;
struct TYPE_5__ {int func; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_3__* sc_cisdev; TYPE_2__ pci; int sc_cis; } ;
typedef int device_t ;
struct TYPE_7__ {struct cardbus_devinfo* si_drv1; } ;


 int cardbus_cdevsw ;
 int cardbus_device_buffer_cis (int ,int ,int *) ;
 int device_get_unit (int ) ;
 TYPE_3__* make_dev (int *,scalar_t__,int ,int ,int,char*,int,int ) ;
 int make_dev_alias (TYPE_3__*,char*,int) ;

int
cardbus_device_create(struct cardbus_softc *sc, struct cardbus_devinfo *devi,
    device_t parent, device_t child)
{
 uint32_t minor;
 int unit;

 cardbus_device_buffer_cis(parent, child, &devi->sc_cis);
 minor = (device_get_unit(sc->sc_dev) << 8) + devi->pci.cfg.func;
 unit = device_get_unit(sc->sc_dev);
 devi->sc_cisdev = make_dev(&cardbus_cdevsw, minor, 0, 0, 0666,
     "cardbus%d.%d.cis", unit, devi->pci.cfg.func);
 if (devi->pci.cfg.func == 0)
  make_dev_alias(devi->sc_cisdev, "cardbus%d.cis", unit);
 devi->sc_cisdev->si_drv1 = devi;
 return (0);
}
