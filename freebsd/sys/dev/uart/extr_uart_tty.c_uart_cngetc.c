
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_poll (int ) ;

__attribute__((used)) static int
uart_cngetc(struct consdev *cp)
{

 return (uart_poll(cp->cn_arg));
}
