
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int bus_hz; int use_pio; int desc_count; int hwtype; } ;
typedef int device_t ;


 int HWTYPE_HISILICON ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int dwmmc_attach (int ) ;

__attribute__((used)) static int
hisi_dwmmc_attach(device_t dev)
{
 struct dwmmc_softc *sc;

 sc = device_get_softc(dev);
 sc->hwtype = HWTYPE_HISILICON;

 sc->bus_hz = 24000000;





 sc->use_pio = 1;
 sc->desc_count = 1;

 return (dwmmc_attach(dev));
}
