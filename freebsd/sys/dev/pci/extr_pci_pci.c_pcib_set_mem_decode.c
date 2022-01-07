
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int membase; int memlimit; int pmembase; int pmemlimit; int dev; } ;
typedef int pci_addr_t ;
typedef int device_t ;


 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PMBASEH_1 ;
 int PCIR_PMBASEL_1 ;
 int PCIR_PMLIMITH_1 ;
 int PCIR_PMLIMITL_1 ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
pcib_set_mem_decode(struct pcib_softc *sc)
{
 device_t dev;
 pci_addr_t pmemhi;

 dev = sc->dev;

 pci_write_config(dev, PCIR_MEMBASE_1, sc->membase >> 16, 2);
 pci_write_config(dev, PCIR_MEMLIMIT_1, sc->memlimit >> 16, 2);

 pmemhi = sc->pmembase >> 32;
 if (pmemhi > 0)
  pci_write_config(dev, PCIR_PMBASEH_1, pmemhi, 4);
 pci_write_config(dev, PCIR_PMBASEL_1, sc->pmembase >> 16, 2);

 pmemhi = sc->pmemlimit >> 32;
 if (pmemhi > 0)
  pci_write_config(dev, PCIR_PMLIMITH_1, pmemhi, 4);
 pci_write_config(dev, PCIR_PMLIMITL_1, sc->pmemlimit >> 16, 2);
}
