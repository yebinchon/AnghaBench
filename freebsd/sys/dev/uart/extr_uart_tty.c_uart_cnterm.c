
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_term (int ) ;

__attribute__((used)) static void
uart_cnterm(struct consdev *cp)
{

 uart_term(cp->cn_arg);
}
