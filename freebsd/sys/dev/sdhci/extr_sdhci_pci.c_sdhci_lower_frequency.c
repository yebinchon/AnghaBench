
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {void* cfg_freq; void* cfg_mode; } ;
typedef int device_t ;


 int SDHC_PCI_BASE_FREQ ;
 int SDHC_PCI_BASE_FREQ_KEY ;
 int SDHC_PCI_MODE ;
 int SDHC_PCI_MODE_KEY ;
 int SDHC_PCI_MODE_SD20 ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 void* pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
sdhci_lower_frequency(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);





 pci_write_config(dev, SDHC_PCI_MODE_KEY, 0xfc, 1);
 sc->cfg_mode = pci_read_config(dev, SDHC_PCI_MODE, 1);
 pci_write_config(dev, SDHC_PCI_MODE, SDHC_PCI_MODE_SD20, 1);
 pci_write_config(dev, SDHC_PCI_MODE_KEY, 0x00, 1);





 pci_write_config(dev, SDHC_PCI_BASE_FREQ_KEY, 0x01, 1);
 sc->cfg_freq = pci_read_config(dev, SDHC_PCI_BASE_FREQ, 1);
 pci_write_config(dev, SDHC_PCI_BASE_FREQ, 50, 1);
 pci_write_config(dev, SDHC_PCI_BASE_FREQ_KEY, 0x00, 1);
}
