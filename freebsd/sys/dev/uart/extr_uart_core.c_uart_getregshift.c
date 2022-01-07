
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_class {int uc_rshift; } ;



u_int
uart_getregshift(struct uart_class *uc)
{
 return ((uc != ((void*)0)) ? uc->uc_rshift : 0);
}
