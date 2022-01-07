
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_pinctrl_softc {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int OF_device_from_xref (int ) ;

__attribute__((used)) static device_t
jz4780_pinctrl_chip_lookup(struct jz4780_pinctrl_softc *sc, phandle_t chipxref)
{
 device_t chipdev;

 chipdev = OF_device_from_xref(chipxref);
 return chipdev;
}
