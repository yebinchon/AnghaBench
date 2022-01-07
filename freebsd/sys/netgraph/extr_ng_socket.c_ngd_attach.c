
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct ngpcb {int dummy; } ;


 int EISCONN ;
 int ng_attach_data (struct socket*) ;
 struct ngpcb* sotongpcb (struct socket*) ;

__attribute__((used)) static int
ngd_attach(struct socket *so, int proto, struct thread *td)
{
 struct ngpcb *const pcbp = sotongpcb(so);

 if (pcbp != ((void*)0))
  return (EISCONN);
 return (ng_attach_data(so));
}
