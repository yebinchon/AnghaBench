
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int bsh; int bst; } ;
struct mtx {int dummy; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int DELAY (int) ;
 int SBBC_CONS_OFF (int ) ;
 int SBBC_SRAM_CONS_SPACE_IN ;
 int SBBC_SRAM_READ_1 (int) ;
 int SBBC_SRAM_READ_4 (int) ;
 int SBBC_SRAM_WRITE_4 (int,int) ;
 int cons_in_begin ;
 int cons_in_end ;
 int cons_in_rdptr ;
 int sbbc_send_intr (int ,int ) ;
 int sbbc_solcons ;
 int sbbc_solscir ;
 scalar_t__ sbbc_uart_rxready (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
sbbc_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 int c;
 uint32_t rdptr;

 bst = bas->bst;
 bsh = bas->bsh;

 uart_lock(hwmtx);

 while (sbbc_uart_rxready(bas) == 0) {
  uart_unlock(hwmtx);
  DELAY(4);
  uart_lock(hwmtx);
 }

 rdptr = SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_rdptr));
 c = SBBC_SRAM_READ_1(sbbc_solcons + rdptr);
 uart_barrier(bas);
 if (++rdptr == SBBC_SRAM_READ_4(sbbc_solcons +
     SBBC_CONS_OFF(cons_in_end)))
  rdptr = SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_in_begin));
 SBBC_SRAM_WRITE_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_rdptr),
     rdptr);
 uart_barrier(bas);
 SBBC_SRAM_WRITE_4(sbbc_solscir, SBBC_SRAM_READ_4(sbbc_solscir) |
     SBBC_SRAM_CONS_SPACE_IN);
 uart_barrier(bas);
 sbbc_send_intr(bst, bsh);

 uart_unlock(hwmtx);
 return (c);
}
