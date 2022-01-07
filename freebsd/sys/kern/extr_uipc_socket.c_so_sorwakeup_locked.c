
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int sorwakeup_locked (struct socket*) ;

void
so_sorwakeup_locked(struct socket *so)
{

 sorwakeup_locked(so);
}
