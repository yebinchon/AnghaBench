
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int dummy; } ;


 int vtnet_disable_rx_interrupts (struct vtnet_softc*) ;
 int vtnet_disable_tx_interrupts (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_disable_interrupts(struct vtnet_softc *sc)
{

 vtnet_disable_rx_interrupts(sc);
 vtnet_disable_tx_interrupts(sc);
}
