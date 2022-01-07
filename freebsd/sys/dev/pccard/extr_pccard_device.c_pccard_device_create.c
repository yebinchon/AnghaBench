
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pccard_softc {TYPE_1__* cisdev; int dev; } ;
struct TYPE_2__ {struct pccard_softc* si_drv1; } ;


 int device_get_unit (int ) ;
 TYPE_1__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int pccard_cdevsw ;

int
pccard_device_create(struct pccard_softc *sc)
{
 uint32_t minor;

 minor = device_get_unit(sc->dev) << 16;
 sc->cisdev = make_dev(&pccard_cdevsw, minor, 0, 0, 0666,
     "pccard%u.cis", device_get_unit(sc->dev));
 sc->cisdev->si_drv1 = sc;
 return (0);
}
