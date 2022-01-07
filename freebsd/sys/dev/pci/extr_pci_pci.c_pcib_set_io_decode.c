
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcib_softc {int iobase; int iolimit; int dev; } ;
typedef int device_t ;


 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
pcib_set_io_decode(struct pcib_softc *sc)
{
 device_t dev;
 uint32_t iohi;

 dev = sc->dev;

 iohi = sc->iobase >> 16;
 if (iohi > 0)
  pci_write_config(dev, PCIR_IOBASEH_1, iohi, 2);
 pci_write_config(dev, PCIR_IOBASEL_1, sc->iobase >> 8, 1);

 iohi = sc->iolimit >> 16;
 if (iohi > 0)
  pci_write_config(dev, PCIR_IOLIMITH_1, iohi, 2);
 pci_write_config(dev, PCIR_IOLIMITL_1, sc->iolimit >> 8, 1);
}
