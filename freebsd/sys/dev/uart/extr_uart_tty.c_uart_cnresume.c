
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_init (int ) ;

__attribute__((used)) static void
uart_cnresume(struct consdev *cp)
{

 uart_init(cp->cn_arg);
}
