
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int bdev; int * sc_res; } ;
typedef int device_t ;


 int AGP_I855_GCC1 ;
 int AGP_I965_MSAC ;
 int AGP_I965_PGTBL_CTL2 ;
 int bus_read_4 (int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
agp_i965_dump_regs(device_t dev)
{
 struct agp_i810_softc *sc = device_get_softc(dev);

 device_printf(dev, "AGP_I965_PGTBL_CTL2: %08x\n",
     bus_read_4(sc->sc_res[0], AGP_I965_PGTBL_CTL2));
 device_printf(dev, "AGP_I855_GCC1: 0x%02x\n",
     pci_read_config(sc->bdev, AGP_I855_GCC1, 1));
 device_printf(dev, "AGP_I965_MSAC: 0x%02x\n",
     pci_read_config(sc->bdev, AGP_I965_MSAC, 1));
}
