
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;
struct uart_softc {void* sc_txfifosz; void* sc_rxfifosz; struct uart_bas sc_bas; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 scalar_t__ SBBC_CONS_OFF (int ) ;
 void* SBBC_SRAM_READ_4 (scalar_t__) ;
 int cons_in_begin ;
 int cons_in_end ;
 int cons_out_begin ;
 int cons_out_end ;
 scalar_t__ sbbc_console ;
 scalar_t__ sbbc_solcons ;

__attribute__((used)) static int
sbbc_uart_bus_probe(struct uart_softc *sc)
{
 struct uart_bas *bas;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;

 if (sbbc_console != 0) {
  bas = &sc->sc_bas;
  bst = bas->bst;
  bsh = bas->bsh;
  sc->sc_rxfifosz = SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_in_end)) - SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_in_begin)) - 1;
  sc->sc_txfifosz = SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_out_end)) - SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_out_begin)) - 1;
  return (0);
 }
 return (ENXIO);
}
