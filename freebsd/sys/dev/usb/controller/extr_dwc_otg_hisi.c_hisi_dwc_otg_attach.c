
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_mode; } ;
struct dwc_otg_fdt_softc {TYPE_1__ sc_otg; } ;
typedef int device_t ;


 int DWC_MODE_HOST ;
 struct dwc_otg_fdt_softc* device_get_softc (int ) ;
 int dwc_otg_attach (int ) ;

__attribute__((used)) static int
hisi_dwc_otg_attach(device_t dev)
{
 struct dwc_otg_fdt_softc *sc;



 sc = device_get_softc(dev);
 sc->sc_otg.sc_mode = DWC_MODE_HOST;

 return (dwc_otg_attach(dev));
}
