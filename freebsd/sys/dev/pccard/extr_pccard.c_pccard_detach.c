
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int pccard_detach_card (int ) ;
 int pccard_device_destroy (int ) ;

__attribute__((used)) static int
pccard_detach(device_t dev)
{
 pccard_detach_card(dev);
 pccard_device_destroy(device_get_softc(dev));
 return (0);
}
