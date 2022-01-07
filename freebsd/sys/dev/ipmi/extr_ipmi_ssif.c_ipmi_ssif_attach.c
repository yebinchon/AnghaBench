
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_ssif_smbus_address; int ipmi_driver_request; int ipmi_enqueue_request; int ipmi_startup; int ipmi_ssif_smbus; } ;
typedef int device_t ;


 int ipmi_polled_enqueue_request ;
 int ssif_driver_request ;
 int ssif_startup ;

int
ipmi_ssif_attach(struct ipmi_softc *sc, device_t smbus, int smbus_address)
{


 sc->ipmi_ssif_smbus = smbus;
 sc->ipmi_ssif_smbus_address = smbus_address;


 sc->ipmi_startup = ssif_startup;
 sc->ipmi_enqueue_request = ipmi_polled_enqueue_request;
 sc->ipmi_driver_request = ssif_driver_request;

 return (0);
}
