
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIB_ALLOC_MSI (int ,int ,int,int,int*) ;
 int PCIB_DISABLE_MSI ;
 int device_get_parent (int ) ;
 struct pcib_softc* device_get_softc (int ) ;

int
pcib_alloc_msi(device_t pcib, device_t dev, int count, int maxcount, int *irqs)
{
 struct pcib_softc *sc = device_get_softc(pcib);
 device_t bus;

 if (sc->flags & PCIB_DISABLE_MSI)
  return (ENXIO);
 bus = device_get_parent(pcib);
 return (PCIB_ALLOC_MSI(device_get_parent(bus), dev, count, maxcount,
     irqs));
}
