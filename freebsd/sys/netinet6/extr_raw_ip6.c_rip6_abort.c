
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int KASSERT (int ,char*) ;
 int soisdisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
rip6_abort(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_abort: inp == NULL"));

 soisdisconnected(so);
}
