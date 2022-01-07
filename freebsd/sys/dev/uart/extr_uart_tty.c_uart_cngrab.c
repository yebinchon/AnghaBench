
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_grab (int ) ;

__attribute__((used)) static void
uart_cngrab(struct consdev *cp)
{

 uart_grab(cp->cn_arg);
}
