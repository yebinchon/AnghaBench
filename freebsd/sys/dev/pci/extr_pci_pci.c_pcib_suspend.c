
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_suspend (int ) ;
 int device_get_softc (int ) ;
 int pcib_cfg_save (int ) ;

int
pcib_suspend(device_t dev)
{

 pcib_cfg_save(device_get_softc(dev));
 return (bus_generic_suspend(dev));
}
