
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

void *
mii_dev_mac_softc(device_t parent)
{

 return (device_get_softc(device_get_parent(device_get_parent(parent))));
}
