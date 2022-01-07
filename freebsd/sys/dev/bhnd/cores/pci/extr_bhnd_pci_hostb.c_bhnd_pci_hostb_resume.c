
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pcihb_softc {int dummy; } ;
typedef int device_t ;


 int BHND_PCI_WAR_RESUME ;
 int bhnd_pci_generic_detach (int ) ;
 int bhnd_pci_generic_resume (int ) ;
 int bhnd_pci_wars_hwup (struct bhnd_pcihb_softc*,int ) ;
 struct bhnd_pcihb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pci_hostb_resume(device_t dev)
{
 struct bhnd_pcihb_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bhnd_pci_generic_resume(dev)))
  return (error);


 if ((error = bhnd_pci_wars_hwup(sc, BHND_PCI_WAR_RESUME))) {
  bhnd_pci_generic_detach(dev);
  return (error);
 }

 return (0);
}
