
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ bst; int bsh; } ;


 scalar_t__ pmap_kextract (int ) ;

int
uart_cpu_eqres(struct uart_bas *b1, struct uart_bas *b2)
{

 if (b1->bst != b2->bst)
  return (0);
 if (pmap_kextract(b1->bsh) == 0)
  return (0);
 if (pmap_kextract(b2->bsh) == 0)
  return (0);
 return ((pmap_kextract(b1->bsh) == pmap_kextract(b2->bsh)) ? 1 : 0);
}
