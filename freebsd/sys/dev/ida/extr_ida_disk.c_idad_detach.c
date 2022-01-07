
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idad_softc {int disk; } ;
typedef int device_t ;


 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (int ) ;

__attribute__((used)) static int
idad_detach(device_t dev)
{
 struct idad_softc *drv;

 drv = (struct idad_softc *)device_get_softc(dev);
 disk_destroy(drv->disk);
 return (0);
}
