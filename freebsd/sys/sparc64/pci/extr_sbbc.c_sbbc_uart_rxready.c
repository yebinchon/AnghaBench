
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ SBBC_CONS_OFF (int ) ;
 scalar_t__ SBBC_SRAM_READ_4 (scalar_t__) ;
 int cons_in_rdptr ;
 int cons_in_wrptr ;
 scalar_t__ sbbc_solcons ;

__attribute__((used)) static int
sbbc_uart_rxready(struct uart_bas *bas)
{
 bus_space_tag_t bst;
 bus_space_handle_t bsh;

 bst = bas->bst;
 bsh = bas->bsh;

 if (SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_rdptr)) ==
     SBBC_SRAM_READ_4(sbbc_solcons + SBBC_CONS_OFF(cons_in_wrptr)))
  return (0);
 return (1);
}
