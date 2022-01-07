
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipmi_driver_requests_polled; int ipmi_dev; int ipmi_enqueue_request; int ipmi_driver_request; int ipmi_startup; } ;
struct opal_ipmi_softc {int sc_msg; TYPE_1__ ipmi; int sc_interface; } ;
struct opal_ipmi_msg {int dummy; } ;
typedef int pcell_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ IPMI_MAX_RX ;
 int M_IPMI ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 struct opal_ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ipmi_attach (int ) ;
 int ipmi_polled_enqueue_request ;
 int malloc (scalar_t__,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int opal_ipmi_driver_request ;
 int opal_ipmi_startup ;

__attribute__((used)) static int
opal_ipmi_attach(device_t dev)
{
 struct opal_ipmi_softc *sc;

 sc = device_get_softc(dev);

 if (OF_getencprop(ofw_bus_get_node(dev), "ibm,ipmi-interface-id",
     (pcell_t*)&sc->sc_interface, sizeof(sc->sc_interface)) < 0) {
  device_printf(dev, "Missing interface id\n");
  return (ENXIO);
 }
 sc->ipmi.ipmi_startup = opal_ipmi_startup;
 sc->ipmi.ipmi_driver_request = opal_ipmi_driver_request;
 sc->ipmi.ipmi_enqueue_request = ipmi_polled_enqueue_request;
 sc->ipmi.ipmi_driver_requests_polled = 1;
 sc->ipmi.ipmi_dev = dev;

 sc->sc_msg = malloc(sizeof(struct opal_ipmi_msg) + IPMI_MAX_RX, M_IPMI,
     M_WAITOK | M_ZERO);

 return (ipmi_attach(dev));
}
