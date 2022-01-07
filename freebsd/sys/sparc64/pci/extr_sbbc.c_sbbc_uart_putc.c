
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int bsh; int bst; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int SBBC_CONS_OFF (int ) ;
 int SBBC_SRAM_CONS_OUT ;
 int SBBC_SRAM_READ_4 (int) ;
 int SBBC_SRAM_WRITE_1 (int,int) ;
 int SBBC_SRAM_WRITE_4 (int,int) ;
 int cons_out_begin ;
 int cons_out_end ;
 int cons_out_wrptr ;
 int sbbc_send_intr (int ,int ) ;
 int sbbc_solcons ;
 int sbbc_solscir ;
 int uart_barrier (struct uart_bas*) ;

__attribute__((used)) static void
sbbc_uart_putc(struct uart_bas *bas, int c)
{
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 uint32_t wrptr;

 bst = bas->bst;
 bsh = bas->bsh;

 wrptr = SBBC_SRAM_READ_4(sbbc_solcons +
     SBBC_CONS_OFF(cons_out_wrptr));
 SBBC_SRAM_WRITE_1(sbbc_solcons + wrptr, c);
 uart_barrier(bas);
 if (++wrptr == SBBC_SRAM_READ_4(sbbc_solcons +
     SBBC_CONS_OFF(cons_out_end)))
  wrptr = SBBC_SRAM_READ_4(sbbc_solcons +
      SBBC_CONS_OFF(cons_out_begin));
 SBBC_SRAM_WRITE_4(sbbc_solcons + SBBC_CONS_OFF(cons_out_wrptr),
     wrptr);
 uart_barrier(bas);

 SBBC_SRAM_WRITE_4(sbbc_solscir, SBBC_SRAM_READ_4(sbbc_solscir) |
     SBBC_SRAM_CONS_OUT);
 uart_barrier(bas);
 sbbc_send_intr(bst, bsh);
}
