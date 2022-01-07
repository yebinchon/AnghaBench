
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firewire_softc {struct cdev* dev; TYPE_1__* fc; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int FWMEM_FLAG ;
 int GID_OPERATOR ;
 int MAKEMINOR (int ,int,int ) ;
 int UID_ROOT ;
 int dev_depends (struct cdev*,struct cdev*) ;
 int device_get_unit (int ) ;
 int firewire_cdevsw ;
 void* make_dev (int *,int ,int ,int ,int,char*,int,int ) ;
 int make_dev_alias (struct cdev*,char*,int) ;

int
fwdev_makedev(struct firewire_softc *sc)
{
 int err = 0;

 struct cdev *d;
 int unit;

 unit = device_get_unit(sc->fc->bdev);
 sc->dev = make_dev(&firewire_cdevsw, MAKEMINOR(0, unit, 0),
     UID_ROOT, GID_OPERATOR, 0660, "fw%d.%d", unit, 0);
 d = make_dev(&firewire_cdevsw, MAKEMINOR(FWMEM_FLAG, unit, 0),
     UID_ROOT, GID_OPERATOR, 0660, "fwmem%d.%d", unit, 0);
 dev_depends(sc->dev, d);
 make_dev_alias(sc->dev, "fw%d", unit);
 make_dev_alias(d, "fwmem%d", unit);

 return (err);
}
