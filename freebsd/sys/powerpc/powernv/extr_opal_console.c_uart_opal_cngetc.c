
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_opal_getc (int ) ;

__attribute__((used)) static int
uart_opal_cngetc(struct consdev *cp)
{
 return (uart_opal_getc(cp->cn_arg));
}
