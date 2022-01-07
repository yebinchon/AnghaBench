
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* chipset_flush ) (int ) ;} ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ) ;

int
agp_intel_gtt_chipset_flush(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 sc->match->driver->chipset_flush(dev);
 return (0);
}
