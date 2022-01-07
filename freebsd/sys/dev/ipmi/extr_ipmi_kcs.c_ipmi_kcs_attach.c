
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_driver_requests_polled; int ipmi_dev; int ipmi_driver_request; int ipmi_enqueue_request; int ipmi_startup; } ;


 int ENXIO ;
 int INB (struct ipmi_softc*,int ) ;
 int KCS_CTL_STS ;
 int KCS_STATUS_OBF ;
 scalar_t__ KCS_STATUS_STATE (int) ;
 scalar_t__ KCS_STATUS_STATE_IDLE ;
 int device_printf (int ,char*,...) ;
 int ipmi_polled_enqueue_request ;
 int kcs_driver_request ;
 int kcs_error (struct ipmi_softc*) ;
 int kcs_startup ;

int
ipmi_kcs_attach(struct ipmi_softc *sc)
{
 int status;


 sc->ipmi_startup = kcs_startup;
 sc->ipmi_enqueue_request = ipmi_polled_enqueue_request;
 sc->ipmi_driver_request = kcs_driver_request;
 sc->ipmi_driver_requests_polled = 1;


 status = INB(sc, KCS_CTL_STS);
 if (status == 0xff) {
  device_printf(sc->ipmi_dev, "couldn't find it\n");
  return (ENXIO);
 }




 if (status & KCS_STATUS_OBF ||
     KCS_STATUS_STATE(status) != KCS_STATUS_STATE_IDLE)
  kcs_error(sc);

 return (0);
}
