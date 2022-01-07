
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int evq_count; int enp; struct sfxge_intr intr; } ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_STARTED ;
 int efx_ev_fini (int ) ;
 int efx_ev_init (int ) ;
 int sfxge_ev_qstart (struct sfxge_softc*,int) ;
 int sfxge_ev_qstop (struct sfxge_softc*,int) ;

int
sfxge_ev_start(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 int index;
 int rc;

 intr = &sc->intr;

 KASSERT(intr->state == SFXGE_INTR_STARTED,
     ("intr->state != SFXGE_INTR_STARTED"));


 if ((rc = efx_ev_init(sc->enp)) != 0)
  return (rc);


 for (index = 0; index < sc->evq_count; index++) {
  if ((rc = sfxge_ev_qstart(sc, index)) != 0)
   goto fail;
 }

 return (0);

fail:

 while (--index >= 0)
  sfxge_ev_qstop(sc, index);


 efx_ev_fini(sc->enp);

 return (rc);
}
