
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_act_vq_pairs; int * vtnet_rxqs; } ;


 int vtnet_rxq_disable_intr (int *) ;

__attribute__((used)) static void
vtnet_disable_rx_interrupts(struct vtnet_softc *sc)
{
 int i;

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++)
  vtnet_rxq_disable_intr(&sc->vtnet_rxqs[i]);
}
