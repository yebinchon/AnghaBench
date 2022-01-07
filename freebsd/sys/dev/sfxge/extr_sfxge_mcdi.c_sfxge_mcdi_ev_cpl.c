
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_mcdi {scalar_t__ state; } ;
struct sfxge_softc {struct sfxge_mcdi mcdi; } ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_MCDI_INITIALIZED ;

__attribute__((used)) static void
sfxge_mcdi_ev_cpl(void *arg)
{
 struct sfxge_softc *sc;
 struct sfxge_mcdi *mcdi;

 sc = (struct sfxge_softc *)arg;
 mcdi = &sc->mcdi;

 KASSERT(mcdi->state == SFXGE_MCDI_INITIALIZED,
     ("MCDI not initialized"));


}
