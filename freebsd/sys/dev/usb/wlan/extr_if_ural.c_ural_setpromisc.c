
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ic_promisc; } ;
struct ural_softc {TYPE_1__ sc_ic; } ;


 int DPRINTF (char*,char*) ;
 int RAL_DROP_NOT_TO_ME ;
 int RAL_TXRX_CSR2 ;
 int ural_read (struct ural_softc*,int ) ;
 int ural_write (struct ural_softc*,int ,int ) ;

__attribute__((used)) static void
ural_setpromisc(struct ural_softc *sc)
{
 uint32_t tmp;

 tmp = ural_read(sc, RAL_TXRX_CSR2);

 tmp &= ~RAL_DROP_NOT_TO_ME;
 if (sc->sc_ic.ic_promisc == 0)
  tmp |= RAL_DROP_NOT_TO_ME;

 ural_write(sc, RAL_TXRX_CSR2, tmp);

 DPRINTF("%s promiscuous mode\n", sc->sc_ic.ic_promisc ?
     "entering" : "leaving");
}
