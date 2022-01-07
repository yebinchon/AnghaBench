
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_ati_softc {scalar_t__ is_rs300; } ;
typedef int device_t ;


 int ATI_RS100_APSIZE ;
 int ATI_RS300_APSIZE ;
 struct agp_ati_softc* device_get_softc (int ) ;
 int ffs (int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
agp_ati_set_aperture(device_t dev, u_int32_t aperture)
{
 struct agp_ati_softc *sc = device_get_softc(dev);
 int size_value;
 u_int32_t apsize_reg;

 if (sc->is_rs300)
  apsize_reg = ATI_RS300_APSIZE;
 else
  apsize_reg = ATI_RS100_APSIZE;

 size_value = pci_read_config(dev, apsize_reg, 4);

 size_value &= ~0x0000000e;
 size_value |= (ffs(aperture / (32 * 1024 * 1024)) - 1) << 1;

 pci_write_config(dev, apsize_reg, size_value, 4);

 return 0;
}
