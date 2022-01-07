
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int (* ipmi_driver_request ) (struct ipmi_softc*,struct ipmi_request*,int) ;} ;
struct ipmi_request {int dummy; } ;


 int stub1 (struct ipmi_softc*,struct ipmi_request*,int) ;

int
ipmi_submit_driver_request(struct ipmi_softc *sc, struct ipmi_request *req,
    int timo)
{

 return (sc->ipmi_driver_request(sc, req, timo));
}
