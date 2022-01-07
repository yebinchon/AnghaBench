
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uart_bas {int bsh; int bst; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ SBBC_CONS_OFF (int ) ;
 scalar_t__ SBBC_SRAM_CONS_SPACE_IN ;
 int SBBC_SRAM_READ_1 (scalar_t__) ;
 scalar_t__ SBBC_SRAM_READ_4 (scalar_t__) ;
 int SBBC_SRAM_WRITE_4 (scalar_t__,scalar_t__) ;
 int UART_STAT_OVERRUN ;
 int cons_in_begin ;
 int cons_in_end ;
 int cons_in_rdptr ;
 int cons_in_wrptr ;
 int sbbc_send_intr (int ,int ) ;
 scalar_t__ sbbc_solcons ;
 scalar_t__ sbbc_solscir ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sbbc_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 int c;
 uint32_t end, rdptr, wrptr;

 bas = &sc->sc_bas;
 bst = bas->bst;
 bsh = bas->bsh;

 uart_lock(sc->sc_hwmtx);

 end = SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_end));
 rdptr = SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_rdptr));
 wrptr = SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_wrptr));
 while (rdptr != wrptr) {
  if (uart_rx_full(sc) != 0) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  c = SBBC_SRAM_READ_1(sbbc_solcons + rdptr);
  uart_rx_put(sc, c);
  if (++rdptr == end)
   rdptr = SBBC_SRAM_READ_4(sbbc_solcons +
       SBBC_CONS_OFF(cons_in_begin));
 }
 uart_barrier(bas);
 SBBC_SRAM_WRITE_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_rdptr),
     rdptr);
 uart_barrier(bas);
 SBBC_SRAM_WRITE_4(sbbc_solscir, SBBC_SRAM_READ_4(sbbc_solscir) |
     SBBC_SRAM_CONS_SPACE_IN);
 uart_barrier(bas);
 sbbc_send_intr(bst, bsh);

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
