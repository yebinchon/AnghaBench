
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;
struct ipmi_request {scalar_t__ ir_error; } ;


 scalar_t__ EIO ;
 int IPMI_IO_LOCK (struct ipmi_softc*) ;
 int IPMI_IO_UNLOCK (struct ipmi_softc*) ;
 int IPMI_LOCK (struct ipmi_softc*) ;
 int IPMI_UNLOCK (struct ipmi_softc*) ;
 int ipmi_complete_request (struct ipmi_softc*,struct ipmi_request*) ;
 struct ipmi_request* ipmi_dequeue_request (struct ipmi_softc*) ;
 int kproc_exit (int ) ;
 int smic_polled_request (struct ipmi_softc*,struct ipmi_request*) ;

__attribute__((used)) static void
smic_loop(void *arg)
{
 struct ipmi_softc *sc = arg;
 struct ipmi_request *req;
 int i, ok;

 IPMI_LOCK(sc);
 while ((req = ipmi_dequeue_request(sc)) != ((void*)0)) {
  IPMI_UNLOCK(sc);
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
  IPMI_LOCK(sc);
  ipmi_complete_request(sc, req);
 }
 IPMI_UNLOCK(sc);
 kproc_exit(0);
}
