
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int * vtscsi_event_vq; int * vtscsi_request_vq; int * vtscsi_control_vq; } ;


 int vtscsi_drain_event_vq (struct vtscsi_softc*) ;
 int vtscsi_drain_vq (struct vtscsi_softc*,int *) ;

__attribute__((used)) static void
vtscsi_drain_vqs(struct vtscsi_softc *sc)
{

 if (sc->vtscsi_control_vq != ((void*)0))
  vtscsi_drain_vq(sc, sc->vtscsi_control_vq);
 if (sc->vtscsi_request_vq != ((void*)0))
  vtscsi_drain_vq(sc, sc->vtscsi_request_vq);
 if (sc->vtscsi_event_vq != ((void*)0))
  vtscsi_drain_event_vq(sc);
}
