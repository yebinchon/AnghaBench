
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_ipmi_softc {int ipmi; } ;
struct ipmi_softc {int dummy; } ;
struct ipmi_request {int ir_error; } ;


 int IPMI_LOCK (int *) ;
 int IPMI_UNLOCK (int *) ;
 int opal_ipmi_polled_request (struct opal_ipmi_softc*,struct ipmi_request*,int) ;

__attribute__((used)) static int
opal_ipmi_driver_request(struct ipmi_softc *isc, struct ipmi_request *req,
    int timo)
{
 struct opal_ipmi_softc *sc = (struct opal_ipmi_softc *)isc;
 int i, err;

 for (i = 0; i < 3; i++) {
  IPMI_LOCK(&sc->ipmi);
  err = opal_ipmi_polled_request(sc, req, timo);
  IPMI_UNLOCK(&sc->ipmi);
  if (err == 0)
   break;
 }

 req->ir_error = err;

 return (err);
}
