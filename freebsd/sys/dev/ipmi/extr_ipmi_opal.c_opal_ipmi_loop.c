
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_ipmi_softc {int ipmi; } ;
struct ipmi_request {scalar_t__ ir_error; } ;


 scalar_t__ EIO ;
 int IPMI_IO_LOCK (int *) ;
 int IPMI_IO_UNLOCK (int *) ;
 int IPMI_LOCK (int *) ;
 int IPMI_UNLOCK (int *) ;
 int MAX_TIMEOUT ;
 int ipmi_complete_request (int *,struct ipmi_request*) ;
 struct ipmi_request* ipmi_dequeue_request (int *) ;
 int kproc_exit (int ) ;
 int opal_ipmi_polled_request (struct opal_ipmi_softc*,struct ipmi_request*,int ) ;

__attribute__((used)) static void
opal_ipmi_loop(void *arg)
{
 struct opal_ipmi_softc *sc = arg;
 struct ipmi_request *req;
 int i, ok;

 IPMI_LOCK(&sc->ipmi);
 while ((req = ipmi_dequeue_request(&sc->ipmi)) != ((void*)0)) {
  IPMI_UNLOCK(&sc->ipmi);
  ok = 0;
  for (i = 0; i < 3 && !ok; i++) {
   IPMI_IO_LOCK(&sc->ipmi);
   ok = opal_ipmi_polled_request(sc, req, MAX_TIMEOUT);
   IPMI_IO_UNLOCK(&sc->ipmi);
  }
  if (ok)
   req->ir_error = 0;
  else
   req->ir_error = EIO;
  IPMI_LOCK(&sc->ipmi);
  ipmi_complete_request(&sc->ipmi, req);
 }
 IPMI_UNLOCK(&sc->ipmi);
 kproc_exit(0);
}
