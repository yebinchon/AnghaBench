
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_class {int uc_range; } ;



int
uart_getrange(struct uart_class *uc)
{
 return ((uc != ((void*)0)) ? uc->uc_range : 0);
}
