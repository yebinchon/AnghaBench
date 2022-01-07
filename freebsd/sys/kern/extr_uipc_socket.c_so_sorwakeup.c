
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int sorwakeup (struct socket*) ;

void
so_sorwakeup(struct socket *so)
{

 sorwakeup(so);
}
