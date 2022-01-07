
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int printf (char*,...) ;

void
pci_print_irqmask(uint16_t irqs)
{
 int i, first;

 if (irqs == 0) {
  printf("none");
  return;
 }
 first = 1;
 for (i = 0; i < 16; i++, irqs >>= 1)
  if (irqs & 1) {
   if (!first)
    printf(" ");
   else
    first = 0;
   printf("%d", i);
  }
}
