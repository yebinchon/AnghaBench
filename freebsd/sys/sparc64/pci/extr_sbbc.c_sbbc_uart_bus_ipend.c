
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uart_bas {int bsh; int bst; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ SBBC_CONS_OFF (int ) ;
 int SBBC_PCI_INT_STATUS ;
 scalar_t__ SBBC_REGS_READ_4 (int ) ;
 int SBBC_REGS_WRITE_4 (int ,scalar_t__) ;
 scalar_t__ SBBC_SRAM_CONS_BRK ;
 scalar_t__ SBBC_SRAM_CONS_IN ;
 scalar_t__ SBBC_SRAM_CONS_SPACE_OUT ;
 scalar_t__ SBBC_SRAM_READ_4 (scalar_t__) ;
 int SBBC_SRAM_WRITE_4 (scalar_t__,int ) ;
 int SER_INT_BREAK ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int cons_out_rdptr ;
 int cons_out_wrptr ;
 scalar_t__ sbbc_scsolir ;
 scalar_t__ sbbc_solcons ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sbbc_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 int ipend;
 uint32_t reason, status;

 bas = &sc->sc_bas;
 bst = bas->bst;
 bsh = bas->bsh;

 uart_lock(sc->sc_hwmtx);
 status = SBBC_REGS_READ_4(SBBC_PCI_INT_STATUS);
 if (status == 0) {
  uart_unlock(sc->sc_hwmtx);
  return (0);
 }





 reason = SBBC_SRAM_READ_4(sbbc_scsolir);
 SBBC_SRAM_WRITE_4(sbbc_scsolir, 0);
 uart_barrier(bas);

 SBBC_REGS_WRITE_4(SBBC_PCI_INT_STATUS, status);
 uart_barrier(bas);

 uart_unlock(sc->sc_hwmtx);

 ipend = 0;
 if ((reason & SBBC_SRAM_CONS_IN) != 0)
  ipend |= SER_INT_RXREADY;
 if ((reason & SBBC_SRAM_CONS_BRK) != 0)
  ipend |= SER_INT_BREAK;
 if ((reason & SBBC_SRAM_CONS_SPACE_OUT) != 0 &&
     SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_out_rdptr)) ==
     SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_out_wrptr)))
  ipend |= SER_INT_TXIDLE;
 return (ipend);
}
