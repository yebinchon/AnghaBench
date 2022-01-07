
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sis_softc {int dummy; } ;
typedef int * device_t ;
typedef int * caddr_t ;
typedef int bus_space_tag_t ;


 int X86_BUS_SPACE_IO ;
 int bus_space_read_1 (int ,int,int) ;
 int bus_space_write_1 (int ,int,int,int) ;
 int pci_read_config (int *,int,int) ;
 int pci_write_config (int *,int,int,int) ;
 int * sis_find_bridge (int *) ;

__attribute__((used)) static void
sis_read_cmos(struct sis_softc *sc, device_t dev, caddr_t dest, int off, int cnt)
{
 device_t bridge;
 uint8_t reg;
 int i;
 bus_space_tag_t btag;

 bridge = sis_find_bridge(dev);
 if (bridge == ((void*)0))
  return;
 reg = pci_read_config(bridge, 0x48, 1);
 pci_write_config(bridge, 0x48, reg|0x40, 1);



 btag = X86_BUS_SPACE_IO;


 for (i = 0; i < cnt; i++) {
  bus_space_write_1(btag, 0x0, 0x70, i + off);
  *(dest + i) = bus_space_read_1(btag, 0x0, 0x71);
 }

 pci_write_config(bridge, 0x48, reg & ~0x40, 1);
}
