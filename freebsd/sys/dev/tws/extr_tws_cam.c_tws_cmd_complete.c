
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
struct tws_request {int timeout; struct tws_softc* sc; } ;


 int callout_stop (int *) ;
 int tws_unmap_request (struct tws_softc*,struct tws_request*) ;

void
tws_cmd_complete(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    callout_stop(&req->timeout);
    tws_unmap_request(sc, req);
}
