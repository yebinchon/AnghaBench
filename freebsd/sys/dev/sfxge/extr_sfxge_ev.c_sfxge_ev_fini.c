
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int evq_count; scalar_t__ ev_moderation; struct sfxge_intr intr; } ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 int sfxge_ev_qfini (struct sfxge_softc*,int) ;

void
sfxge_ev_fini(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 int index;

 intr = &sc->intr;

 KASSERT(intr->state == SFXGE_INTR_INITIALIZED,
     ("intr->state != SFXGE_INTR_INITIALIZED"));

 sc->ev_moderation = 0;


 index = sc->evq_count;
 while (--index >= 0)
  sfxge_ev_qfini(sc, index);

 sc->evq_count = 0;
}
