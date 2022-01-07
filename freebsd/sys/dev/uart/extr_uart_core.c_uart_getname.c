
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_class {char const* name; } ;



const char *
uart_getname(struct uart_class *uc)
{
 return ((uc != ((void*)0)) ? uc->name : ((void*)0));
}
