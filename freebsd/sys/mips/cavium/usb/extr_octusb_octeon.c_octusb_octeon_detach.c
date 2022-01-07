
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_bus; int ** sc_irq_res; int ** sc_intr_hdl; } ;
struct octusb_octeon_softc {TYPE_1__ sc_dci; } ;
typedef int device_t ;


 int OCTUSB_MAX_PORTS ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int cvmx_usb_get_num_ports () ;
 int device_delete_children (int ) ;
 struct octusb_octeon_softc* device_get_softc (int ) ;
 int octusb_uninit (TYPE_1__*) ;
 int panic (char*,int) ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
octusb_octeon_detach(device_t dev)
{
 struct octusb_octeon_softc *sc = device_get_softc(dev);
 int err;
 int nports;
 int i;


 device_delete_children(dev);

 if (sc->sc_dci.sc_irq_res[0] && sc->sc_dci.sc_intr_hdl[0])



  octusb_uninit(&sc->sc_dci);

 nports = cvmx_usb_get_num_ports();
 if (nports > OCTUSB_MAX_PORTS)
  panic("octusb: too many USB ports %d", nports);
 for (i = 0; i < nports; i++) {
  if (sc->sc_dci.sc_irq_res[i] && sc->sc_dci.sc_intr_hdl[i]) {
   err = bus_teardown_intr(dev, sc->sc_dci.sc_irq_res[i],
       sc->sc_dci.sc_intr_hdl[i]);
   sc->sc_dci.sc_intr_hdl[i] = ((void*)0);
  }
  if (sc->sc_dci.sc_irq_res[i]) {
   bus_release_resource(dev, SYS_RES_IRQ, 0,
       sc->sc_dci.sc_irq_res[i]);
   sc->sc_dci.sc_irq_res[i] = ((void*)0);
  }
 }
 usb_bus_mem_free_all(&sc->sc_dci.sc_bus, ((void*)0));

 return (0);
}
