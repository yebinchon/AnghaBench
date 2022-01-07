
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int rxq_count; } ;


 int sfxge_rx_qfini (struct sfxge_softc*,int) ;

void
sfxge_rx_fini(struct sfxge_softc *sc)
{
 int index;

 index = sc->rxq_count;
 while (--index >= 0)
  sfxge_rx_qfini(sc, index);

 sc->rxq_count = 0;
}
