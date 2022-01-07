
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct socket {int dummy; } ;


 struct tcpcb* sototcpcb (struct socket*) ;

struct tcpcb *
so_sototcpcb(struct socket *so)
{

 return (sototcpcb(so));
}
