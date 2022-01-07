
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* sc_ah; } ;
struct TYPE_2__ {int ah_magic; } ;



__attribute__((used)) static inline int
ath_tx_is_11n(struct ath_softc *sc)
{
 return ((sc->sc_ah->ah_magic == 0x20065416) ||
      (sc->sc_ah->ah_magic == 0x19741014));
}
