
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int link_width; int pectl; int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int device_t ;


 int PCIY_EXPRESS ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
mxge_setup_cfg_space(mxge_softc_t *sc)
{
 device_t dev = sc->dev;
 int reg;
 uint16_t lnk, pectl;


 if (pci_find_cap(dev, PCIY_EXPRESS, &reg) == 0) {
  lnk = pci_read_config(dev, reg + 0x12, 2);
  sc->link_width = (lnk >> 4) & 0x3f;

  if (sc->pectl == 0) {
   pectl = pci_read_config(dev, reg + 0x8, 2);
   pectl = (pectl & ~0x7000) | (5 << 12);
   pci_write_config(dev, reg + 0x8, pectl, 2);
   sc->pectl = pectl;
  } else {

   pci_write_config(dev, reg + 0x8, sc->pectl, 2);
  }
 }


 pci_enable_busmaster(dev);
}
