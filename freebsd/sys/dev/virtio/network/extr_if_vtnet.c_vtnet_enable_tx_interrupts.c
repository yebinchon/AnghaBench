
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_act_vq_pairs; int * vtnet_txqs; } ;


 int vtnet_txq_enable_intr (int *) ;

__attribute__((used)) static void
vtnet_enable_tx_interrupts(struct vtnet_softc *sc)
{
 int i;

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++)
  vtnet_txq_enable_intr(&sc->vtnet_txqs[i]);
}
