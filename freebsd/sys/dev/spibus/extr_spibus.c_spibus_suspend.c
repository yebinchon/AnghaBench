
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_suspend (int ) ;

__attribute__((used)) static int
spibus_suspend(device_t dev)
{
 return (bus_generic_suspend(dev));
}
