
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;
struct ipmi_request {int ir_error; } ;


 int EIO ;
 int IPMI_IO_LOCK (struct ipmi_softc*) ;
 int IPMI_IO_UNLOCK (struct ipmi_softc*) ;
 int smic_polled_request (struct ipmi_softc*,struct ipmi_request*) ;

__attribute__((used)) static int
smic_driver_request(struct ipmi_softc *sc, struct ipmi_request *req, int timo)
{
 int i, ok;

 ok = 0;
 for (i = 0; i < 3 && !ok; i++) {
  IPMI_IO_LOCK(sc);
  ok = smic_polled_request(sc, req);
  IPMI_IO_UNLOCK(sc);
 }
 if (ok)
  req->ir_error = 0;
 else
  req->ir_error = EIO;
 return (req->ir_error);
}
