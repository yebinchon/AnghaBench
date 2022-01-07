
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct ath_softc {int* sc_rixmap; } ;



int
ath_tx_findrix(const struct ath_softc *sc, uint8_t rate)
{
 int rix = sc->sc_rixmap[rate];

 return (rix == 0xff ? 0 : rix);
}
