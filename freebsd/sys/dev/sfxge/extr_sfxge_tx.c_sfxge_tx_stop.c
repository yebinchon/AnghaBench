
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int txq_count; int enp; } ;


 int efx_tx_fini (int ) ;
 int sfxge_tx_qstop (struct sfxge_softc*,int) ;

void
sfxge_tx_stop(struct sfxge_softc *sc)
{
 int index;

 index = sc->txq_count;
 while (--index >= 0)
  sfxge_tx_qstop(sc, index);


 efx_tx_fini(sc->enp);
}
