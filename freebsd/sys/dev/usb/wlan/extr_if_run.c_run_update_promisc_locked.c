
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ic_promisc; } ;
struct run_softc {TYPE_1__ sc_ic; } ;


 int RT2860_DROP_UC_NOME ;
 int RT2860_RX_FILTR_CFG ;
 int RUN_DEBUG_RECV ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,char*) ;
 int run_read (struct run_softc*,int ,int *) ;
 int run_write (struct run_softc*,int ,int ) ;

__attribute__((used)) static void
run_update_promisc_locked(struct run_softc *sc)
{
        uint32_t tmp;

 run_read(sc, RT2860_RX_FILTR_CFG, &tmp);

 tmp |= RT2860_DROP_UC_NOME;
        if (sc->sc_ic.ic_promisc > 0)
  tmp &= ~RT2860_DROP_UC_NOME;

 run_write(sc, RT2860_RX_FILTR_CFG, tmp);

        RUN_DPRINTF(sc, RUN_DEBUG_RECV, "%s promiscuous mode\n",
     (sc->sc_ic.ic_promisc > 0) ? "entering" : "leaving");
}
