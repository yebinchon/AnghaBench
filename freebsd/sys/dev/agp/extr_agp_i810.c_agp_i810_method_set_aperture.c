
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* set_aperture ) (int ,int ) ;} ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
agp_i810_method_set_aperture(device_t dev, u_int32_t aperture)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 return (sc->match->driver->set_aperture(dev, aperture));
}
