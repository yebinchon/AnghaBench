
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pcihb_softc {int dummy; } ;
typedef int device_t ;


 int BHND_PCI_WAR_DETACH ;
 int bhnd_pci_generic_detach (int ) ;
 int bhnd_pci_wars_hwdown (struct bhnd_pcihb_softc*,int ) ;
 struct bhnd_pcihb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pci_hostb_detach(device_t dev)
{
 struct bhnd_pcihb_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bhnd_pci_wars_hwdown(sc, BHND_PCI_WAR_DETACH)))
  return (error);

 return (bhnd_pci_generic_detach(dev));
}
