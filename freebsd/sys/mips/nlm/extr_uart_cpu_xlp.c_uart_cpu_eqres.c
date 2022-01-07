
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ bsh; scalar_t__ bst; } ;



int
uart_cpu_eqres(struct uart_bas *b1, struct uart_bas *b2)
{
 return (b1->bsh == b2->bsh && b1->bst == b2->bst);
}
