
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct ndis_softc {int ndis_dev; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int device_get_parent (int ) ;
 struct ndis_softc* device_get_softc (int ) ;

__attribute__((used)) static struct resource_list *
ndis_get_resource_list(device_t dev, device_t child)
{
 struct ndis_softc *sc;

 sc = device_get_softc(dev);
 return (BUS_GET_RESOURCE_LIST(device_get_parent(sc->ndis_dev), dev));
}
