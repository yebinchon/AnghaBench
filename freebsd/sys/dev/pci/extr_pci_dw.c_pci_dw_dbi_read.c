
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct pci_dw_softc {int dev; int * dbi_res; } ;
typedef int device_t ;


 int MPASS (int ) ;
 int bus_read_1 (int *,int ) ;
 int bus_read_2 (int *,int ) ;
 int bus_read_4 (int *,int ) ;
 struct pci_dw_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static uint32_t
pci_dw_dbi_read(device_t dev, u_int reg, int width)
{
 struct pci_dw_softc *sc;

 sc = device_get_softc(dev);
 MPASS(sc->dbi_res != ((void*)0));

 switch (width) {
 case 4:
  return (bus_read_4(sc->dbi_res, reg));
 case 2:
  return (bus_read_2(sc->dbi_res, reg));
 case 1:
  return (bus_read_1(sc->dbi_res, reg));
 default:
  device_printf(sc->dev, "Unsupported width: %d\n", width);
  return (0xFFFFFFFF);
 }
}
