
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ath_softc {int ** sc_bslot; } ;


 size_t ATH_BCBUF ;

__attribute__((used)) static int
assign_bslot(struct ath_softc *sc)
{
 u_int slot, free;

 free = 0;
 for (slot = 0; slot < ATH_BCBUF; slot++)
  if (sc->sc_bslot[slot] == ((void*)0)) {
   if (sc->sc_bslot[(slot+1)%ATH_BCBUF] == ((void*)0) &&
       sc->sc_bslot[(slot-1)%ATH_BCBUF] == ((void*)0))
    return slot;
   free = slot;

  }
 return free;
}
