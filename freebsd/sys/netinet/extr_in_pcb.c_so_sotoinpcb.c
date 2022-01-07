
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 struct inpcb* sotoinpcb (struct socket*) ;

struct inpcb *
so_sotoinpcb(struct socket *so)
{

 return (sotoinpcb(so));
}
