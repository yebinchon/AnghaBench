
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
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_ati_get_aperture(device_t dev)
{
 struct agp_ati_softc *sc = device_get_softc(dev);
 int size_value;

 if (sc->is_rs300)
  size_value = pci_read_config(dev, ATI_RS300_APSIZE, 4);
 else
  size_value = pci_read_config(dev, ATI_RS100_APSIZE, 4);

 size_value = (size_value & 0x0000000e) >> 1;
 size_value = (32 * 1024 * 1024) << size_value;

 return size_value;
}
