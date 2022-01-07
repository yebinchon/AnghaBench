
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcib_softc {int dummy; } ;
typedef int device_t ;


 int ENODEV ;
 int ENXIO ;
 scalar_t__ PCIB_SUPPORTED_ARI_VER ;
 int PCIEM_CAP2_ARI ;
 int PCIER_DEVICE_CAP2 ;
 int PCIY_EXPRESS ;
 int PCIZ_ARI ;
 scalar_t__ PCI_EXTCAP_VER (int) ;
 scalar_t__ bootverbose ;
 struct pcib_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_find_extcap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pcib_enable_ari (struct pcib_softc*,int) ;

__attribute__((used)) static int
pcib_try_enable_ari(device_t pcib, device_t dev)
{
 struct pcib_softc *sc;
 int error;
 uint32_t cap2;
 int ari_cap_off;
 uint32_t ari_ver;
 uint32_t pcie_pos;

 sc = device_get_softc(pcib);






 error = pci_find_cap(pcib, PCIY_EXPRESS, &pcie_pos);
 if (error != 0)
  return (ENODEV);


 cap2 = pci_read_config(pcib, pcie_pos + PCIER_DEVICE_CAP2, 4);
 if (!(cap2 & PCIEM_CAP2_ARI))
  return (ENODEV);





 error = pci_find_extcap(dev, PCIZ_ARI, &ari_cap_off);
 if (error != 0)
  return (ENODEV);





 ari_ver = pci_read_config(dev, ari_cap_off, 4);
 if (PCI_EXTCAP_VER(ari_ver) != PCIB_SUPPORTED_ARI_VER) {
  if (bootverbose)
   device_printf(pcib,
       "Unsupported version of ARI (%d) detected\n",
       PCI_EXTCAP_VER(ari_ver));

  return (ENXIO);
 }

 pcib_enable_ari(sc, pcie_pos);

 return (0);
}
