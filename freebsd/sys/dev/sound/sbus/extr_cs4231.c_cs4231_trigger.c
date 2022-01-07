
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_flags; } ;
struct cs4231_channel {struct cs4231_softc* parent; } ;


 int CS4231_SBUS ;
 int cs4231_apcdma_trigger (struct cs4231_softc*,struct cs4231_channel*) ;
 int cs4231_ebdma_trigger (struct cs4231_softc*,struct cs4231_channel*) ;

__attribute__((used)) static void
cs4231_trigger(struct cs4231_channel *ch)
{
 struct cs4231_softc *sc;

 sc = ch->parent;
 if ((sc->sc_flags & CS4231_SBUS) != 0)
  cs4231_apcdma_trigger(sc, ch);
 else
  cs4231_ebdma_trigger(sc, ch);
}
