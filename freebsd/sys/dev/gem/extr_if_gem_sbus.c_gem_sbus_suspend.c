
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int gem_suspend (int ) ;

__attribute__((used)) static int
gem_sbus_suspend(device_t dev)
{

 gem_suspend(device_get_softc(dev));
 return (0);
}
