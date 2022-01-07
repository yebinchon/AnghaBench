
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int dummy; } ;


 int vtnet_init_rx_queues (struct vtnet_softc*) ;
 int vtnet_init_tx_queues (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_init_rxtx_queues(struct vtnet_softc *sc)
{
 int error;

 error = vtnet_init_rx_queues(sc);
 if (error)
  return (error);

 error = vtnet_init_tx_queues(sc);
 if (error)
  return (error);

 return (0);
}
