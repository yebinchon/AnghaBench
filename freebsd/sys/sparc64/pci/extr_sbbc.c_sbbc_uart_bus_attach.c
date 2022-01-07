
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int bsh; int bst; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ SBBC_CONS_OFF (int ) ;
 int SBBC_PCI_ENABLE_INT_A ;
 int SBBC_PCI_INT_ENABLE ;
 int SBBC_PCI_INT_STATUS ;
 int SBBC_REGS_WRITE_4 (int ,int) ;
 int SBBC_SRAM_CONS_BRK ;
 int SBBC_SRAM_CONS_IN ;
 int SBBC_SRAM_CONS_SPACE_OUT ;
 int SBBC_SRAM_READ_4 (scalar_t__) ;
 int SBBC_SRAM_WRITE_4 (scalar_t__,int) ;
 int cons_out_rdptr ;
 int cons_out_wrptr ;
 int cpu_spinwait () ;
 scalar_t__ sbbc_scsolie ;
 scalar_t__ sbbc_scsolir ;
 scalar_t__ sbbc_solcons ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sbbc_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 uint32_t wrptr;

 bas = &sc->sc_bas;
 bst = bas->bst;
 bsh = bas->bsh;

 uart_lock(sc->sc_hwmtx);





 wrptr = SBBC_SRAM_READ_4(sbbc_solcons +
     SBBC_CONS_OFF(cons_out_wrptr));
 while (SBBC_SRAM_READ_4(sbbc_solcons +
     SBBC_CONS_OFF(cons_out_rdptr)) != wrptr);
  cpu_spinwait();


 SBBC_SRAM_WRITE_4(sbbc_scsolir, 0);
 uart_barrier(bas);
 SBBC_REGS_WRITE_4(SBBC_PCI_INT_STATUS,
     SBBC_SRAM_READ_4(sbbc_scsolir));
 uart_barrier(bas);

 SBBC_REGS_WRITE_4(SBBC_PCI_INT_ENABLE, SBBC_PCI_ENABLE_INT_A);
 uart_barrier(bas);

 SBBC_SRAM_WRITE_4(sbbc_scsolie, SBBC_SRAM_READ_4(sbbc_scsolie) |
     SBBC_SRAM_CONS_IN | SBBC_SRAM_CONS_BRK |
     SBBC_SRAM_CONS_SPACE_OUT);
 uart_barrier(bas);

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
