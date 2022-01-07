
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int sowwakeup (struct socket*) ;

void
so_sowwakeup(struct socket *so)
{

 sowwakeup(so);
}
