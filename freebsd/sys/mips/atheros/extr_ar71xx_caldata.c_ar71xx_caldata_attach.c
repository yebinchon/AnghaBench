
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ar71xx_platform_check_eeprom_hints (int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;

__attribute__((used)) static int
ar71xx_caldata_attach(device_t dev)
{

 device_add_child(dev, "nexus", -1);
 ar71xx_platform_check_eeprom_hints(dev);
 return (bus_generic_attach(dev));
}
