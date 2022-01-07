
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_dev; } ;
struct ipmi_request {int dummy; } ;


 int IPMI_ADDR (int ,int ) ;
 int IPMI_ALLOC_DRIVER_REQUEST (struct ipmi_request*,int ,int ,int ,int ) ;
 int IPMI_APP_REQUEST ;
 int IPMI_RESET_WDOG ;
 int device_printf (int ,char*) ;
 int ipmi_submit_driver_request (struct ipmi_softc*,struct ipmi_request*,int ) ;

__attribute__((used)) static int
ipmi_reset_watchdog(struct ipmi_softc *sc)
{
 struct ipmi_request *req;
 int error;

 IPMI_ALLOC_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_APP_REQUEST, 0),
     IPMI_RESET_WDOG, 0, 0);
 error = ipmi_submit_driver_request(sc, req, 0);
 if (error)
  device_printf(sc->ipmi_dev, "Failed to reset watchdog\n");
 return (error);
}
