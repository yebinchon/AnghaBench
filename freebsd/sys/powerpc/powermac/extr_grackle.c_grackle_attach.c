
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
struct grackle_softc {void* sc_data; void* sc_addr; } ;
typedef int device_t ;


 int GRACKLE_ADDR ;
 int GRACKLE_DATA ;
 int PAGE_SIZE ;
 struct grackle_softc* device_get_softc (int ) ;
 int ofw_pci_attach (int ) ;
 scalar_t__ pmap_mapdev (int ,int ) ;

__attribute__((used)) static int
grackle_attach(device_t dev)
{
 struct grackle_softc *sc;

 sc = device_get_softc(dev);







 sc->sc_addr = (vm_offset_t)pmap_mapdev(GRACKLE_ADDR, PAGE_SIZE);
 sc->sc_data = (vm_offset_t)pmap_mapdev(GRACKLE_DATA, PAGE_SIZE);

 return (ofw_pci_attach(dev));
}
