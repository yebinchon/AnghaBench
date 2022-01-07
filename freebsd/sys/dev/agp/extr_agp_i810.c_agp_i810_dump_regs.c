
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int bdev; int * sc_res; } ;
typedef int device_t ;


 int AGP_I810_MISCC ;
 int AGP_I810_PGTBL_CTL ;
 int bus_read_4 (int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
agp_i810_dump_regs(device_t dev)
{
 struct agp_i810_softc *sc = device_get_softc(dev);

 device_printf(dev, "AGP_I810_PGTBL_CTL: %08x\n",
     bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL));
 device_printf(dev, "AGP_I810_MISCC: 0x%04x\n",
     pci_read_config(sc->bdev, AGP_I810_MISCC, 2));
}
