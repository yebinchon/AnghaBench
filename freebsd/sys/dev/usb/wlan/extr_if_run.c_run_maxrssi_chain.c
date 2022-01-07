
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct run_softc {int nrxchains; } ;
struct rt2860_rxwi {scalar_t__* rssi; } ;



__attribute__((used)) static __inline uint8_t
run_maxrssi_chain(struct run_softc *sc, const struct rt2860_rxwi *rxwi)
{
 uint8_t rxchain = 0;

 if (sc->nrxchains > 1) {
  if (rxwi->rssi[1] > rxwi->rssi[rxchain])
   rxchain = 1;
  if (sc->nrxchains > 2)
   if (rxwi->rssi[2] > rxwi->rssi[rxchain])
    rxchain = 2;
 }
 return (rxchain);
}
