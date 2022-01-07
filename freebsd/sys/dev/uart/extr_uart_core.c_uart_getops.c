
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_ops {int dummy; } ;
struct uart_class {struct uart_ops* uc_ops; } ;



struct uart_ops *
uart_getops(struct uart_class *uc)
{
 return ((uc != ((void*)0)) ? uc->uc_ops : ((void*)0));
}
