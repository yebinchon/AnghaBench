
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; int sc_generation; } ;


 int IWM_FLAG_HW_INITED ;
 int IWM_FLAG_STOPPED ;
 int iwm_init_hw (struct iwm_softc*) ;
 int iwm_stop (struct iwm_softc*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
iwm_init(struct iwm_softc *sc)
{
 int error;

 if (sc->sc_flags & IWM_FLAG_HW_INITED) {
  return;
 }
 sc->sc_generation++;
 sc->sc_flags &= ~IWM_FLAG_STOPPED;

 if ((error = iwm_init_hw(sc)) != 0) {
  printf("iwm_init_hw failed %d\n", error);
  iwm_stop(sc);
  return;
 }




 sc->sc_flags |= IWM_FLAG_HW_INITED;
}
