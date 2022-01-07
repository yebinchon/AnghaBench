
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_dev; } ;
struct ipmi_request {scalar_t__ ir_error; scalar_t__ ir_compcode; int * ir_request; } ;


 int DELAY (int) ;
 int IPMI_ADDR (int ,int ) ;
 int IPMI_ALLOC_DRIVER_REQUEST (struct ipmi_request*,int ,int ,int,int ) ;
 int IPMI_CC_POWER_CYCLE ;
 int IPMI_CHASSIS_CONTROL ;
 int IPMI_CHASSIS_REQUEST ;
 int MAX_TIMEOUT ;
 int RB_POWERCYCLE ;
 int cycle_wait ;
 int device_printf (int ,char*,...) ;
 int ipmi_submit_driver_request (struct ipmi_softc*,struct ipmi_request*,int ) ;

__attribute__((used)) static void
ipmi_power_cycle(void *arg, int howto)
{
 struct ipmi_softc *sc = arg;
 struct ipmi_request *req;




 if ((howto & RB_POWERCYCLE) == 0)
  return;

 device_printf(sc->ipmi_dev, "Power cycling using IPMI\n");





 IPMI_ALLOC_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_CHASSIS_REQUEST, 0),
     IPMI_CHASSIS_CONTROL, 1, 0);
 req->ir_request[0] = IPMI_CC_POWER_CYCLE;

 ipmi_submit_driver_request(sc, req, MAX_TIMEOUT);

 if (req->ir_error != 0 || req->ir_compcode != 0) {
  device_printf(sc->ipmi_dev, "Power cycling via IPMI failed code %#x %#x\n",
      req->ir_error, req->ir_compcode);
  return;
 }






 DELAY(cycle_wait * 1000 * 1000);
 device_printf(sc->ipmi_dev, "Power cycling via IPMI timed out\n");
}
