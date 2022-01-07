
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int * vtscsi_control_vq; int * vtscsi_request_vq; } ;


 int VTSCSI_LOCK_OWNED (struct vtscsi_softc*) ;
 int vtscsi_complete_vq (struct vtscsi_softc*,int *) ;

__attribute__((used)) static void
vtscsi_complete_vqs_locked(struct vtscsi_softc *sc)
{

 VTSCSI_LOCK_OWNED(sc);

 if (sc->vtscsi_request_vq != ((void*)0))
  vtscsi_complete_vq(sc, sc->vtscsi_request_vq);
 if (sc->vtscsi_control_vq != ((void*)0))
  vtscsi_complete_vq(sc, sc->vtscsi_control_vq);
}
