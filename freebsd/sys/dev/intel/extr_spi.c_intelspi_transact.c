
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelspi_softc {int dummy; } ;


 int INTELSPI_ASSERT_LOCKED (struct intelspi_softc*) ;
 int intelspi_drain_rx_fifo (struct intelspi_softc*) ;
 int intelspi_fill_tx_fifo (struct intelspi_softc*) ;
 int intelspi_transaction_done (struct intelspi_softc*) ;

__attribute__((used)) static int
intelspi_transact(struct intelspi_softc *sc)
{

 INTELSPI_ASSERT_LOCKED(sc);


 intelspi_fill_tx_fifo(sc);


 intelspi_drain_rx_fifo(sc);


 return intelspi_transaction_done(sc);
}
