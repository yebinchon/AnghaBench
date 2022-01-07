
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int cfg_mode; int cfg_freq; } ;
typedef int device_t ;


 int SDHC_PCI_BASE_FREQ ;
 int SDHC_PCI_BASE_FREQ_KEY ;
 int SDHC_PCI_MODE ;
 int SDHC_PCI_MODE_KEY ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
sdhci_restore_frequency(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);


 pci_write_config(dev, SDHC_PCI_MODE_KEY, 0xfc, 1);
 pci_write_config(dev, SDHC_PCI_MODE, sc->cfg_mode, 1);
 pci_write_config(dev, SDHC_PCI_MODE_KEY, 0x00, 1);


 pci_write_config(dev, SDHC_PCI_BASE_FREQ_KEY, 0x01, 1);
 pci_write_config(dev, SDHC_PCI_BASE_FREQ, sc->cfg_freq, 1);
 pci_write_config(dev, SDHC_PCI_BASE_FREQ_KEY, 0x00, 1);
}
