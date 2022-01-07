
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct bwn_softc {int sc_ant2g; int sc_ant5g; } ;
struct TYPE_2__ {scalar_t__ gmode; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;



__attribute__((used)) static uint8_t
bwn_antenna_sanitize(struct bwn_mac *mac, uint8_t n)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint8_t mask;

 if (n == 0)
  return (0);
 if (mac->mac_phy.gmode)
  mask = sc->sc_ant2g;
 else
  mask = sc->sc_ant5g;
 if (!(mask & (1 << (n - 1))))
  return (0);
 return (n);
}
