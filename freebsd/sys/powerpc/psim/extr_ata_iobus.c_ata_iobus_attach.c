
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;

__attribute__((used)) static int
ata_iobus_attach(device_t dev)
{




 device_add_child(dev, "ata", -1);
 return (bus_generic_attach(dev));
}
