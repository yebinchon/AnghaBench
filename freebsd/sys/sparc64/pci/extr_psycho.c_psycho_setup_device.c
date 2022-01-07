
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct psycho_softc {int dummy; } ;
typedef int rev ;
typedef int device_t ;


 scalar_t__ OF_getprop (int ,char*,scalar_t__*,int) ;
 int PCICTL_ARB_PARK ;
 int PCICTL_READ8 (struct psycho_softc*,int ) ;
 int PCICTL_WRITE8 (struct psycho_softc*,int ,int) ;
 int PCR_CS ;
 struct psycho_softc* device_get_softc (int ) ;
 int ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
psycho_setup_device(device_t bus, device_t child)
{
 struct psycho_softc *sc;
 uint32_t rev;

 sc = device_get_softc(bus);




 if ((strcmp(ofw_bus_get_name(child), "ebus") == 0 ||
     strcmp(ofw_bus_get_name(child), "pci108e,1000") == 0) &&
     OF_getprop(ofw_bus_get_node(child), "revision-id", &rev,
     sizeof(rev)) > 0 && rev == 0)
  PCICTL_WRITE8(sc, PCR_CS, PCICTL_READ8(sc, PCR_CS) &
      ~PCICTL_ARB_PARK);
}
