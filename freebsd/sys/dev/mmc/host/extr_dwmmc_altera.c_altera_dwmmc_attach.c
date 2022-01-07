
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int bus_hz; int use_pio; int hwtype; } ;
typedef int phandle_t ;
typedef int device_t ;


 int HWTYPE_ALTERA ;
 int OF_finddevice (char*) ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int dwmmc_attach (int ) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static int
altera_dwmmc_attach(device_t dev)
{
 struct dwmmc_softc *sc;
 phandle_t root;

 sc = device_get_softc(dev);
 sc->hwtype = HWTYPE_ALTERA;

 root = OF_finddevice("/");

 if (ofw_bus_node_is_compatible(root, "altr,socfpga-stratix10")) {
  sc->bus_hz = 24000000;
  sc->use_pio = 1;
 }

 return (dwmmc_attach(dev));
}
