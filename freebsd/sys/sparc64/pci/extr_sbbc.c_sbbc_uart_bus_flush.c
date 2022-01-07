
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;
struct uart_softc {struct uart_bas sc_bas; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENODEV ;
 scalar_t__ SBBC_CONS_OFF (int ) ;
 int SBBC_SRAM_READ_4 (scalar_t__) ;
 int SBBC_SRAM_WRITE_4 (scalar_t__,int ) ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int cons_in_rdptr ;
 int cons_in_wrptr ;
 scalar_t__ sbbc_solcons ;
 int uart_barrier (struct uart_bas*) ;

__attribute__((used)) static int
sbbc_uart_bus_flush(struct uart_softc *sc, int what)
{
 struct uart_bas *bas;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;

 bas = &sc->sc_bas;
 bst = bas->bst;
 bsh = bas->bsh;

 if ((what & UART_FLUSH_TRANSMITTER) != 0)
  return (ENODEV);
 if ((what & UART_FLUSH_RECEIVER) != 0) {
  SBBC_SRAM_WRITE_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_in_rdptr),
      SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_in_wrptr)));
  uart_barrier(bas);
 }
 return (0);
}
