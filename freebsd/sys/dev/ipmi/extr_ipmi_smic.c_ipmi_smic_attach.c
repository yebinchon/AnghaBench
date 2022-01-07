
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_driver_requests_polled; int ipmi_dev; int ipmi_driver_request; int ipmi_enqueue_request; int ipmi_startup; } ;


 int ENXIO ;
 int INB (struct ipmi_softc*,int ) ;
 int SMIC_FLAGS ;
 int device_printf (int ,char*,...) ;
 int ipmi_polled_enqueue_request ;
 int smic_driver_request ;
 int smic_startup ;

int
ipmi_smic_attach(struct ipmi_softc *sc)
{
 int flags;


 sc->ipmi_startup = smic_startup;
 sc->ipmi_enqueue_request = ipmi_polled_enqueue_request;
 sc->ipmi_driver_request = smic_driver_request;
 sc->ipmi_driver_requests_polled = 1;


 flags = INB(sc, SMIC_FLAGS);
 if (flags == 0xff) {
  device_printf(sc->ipmi_dev, "couldn't find it\n");
  return (ENXIO);
 }





 return (0);
}
