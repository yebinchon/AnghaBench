
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int dummy; } ;
typedef int device_t ;


 int agp_i830_install_gatt_init (struct agp_i810_softc*) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_i830_install_gatt(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 agp_i830_install_gatt_init(sc);
 return (0);
}
