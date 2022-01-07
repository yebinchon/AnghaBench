
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;
struct ipmi_request {int ir_error; } ;


 int EIO ;
 int kcs_polled_request (struct ipmi_softc*,struct ipmi_request*) ;

__attribute__((used)) static int
kcs_driver_request(struct ipmi_softc *sc, struct ipmi_request *req, int timo)
{
 int i, ok;

 ok = 0;
 for (i = 0; i < 3 && !ok; i++)
  ok = kcs_polled_request(sc, req);
 if (ok)
  req->ir_error = 0;
 else
  req->ir_error = EIO;
 return (req->ir_error);
}
