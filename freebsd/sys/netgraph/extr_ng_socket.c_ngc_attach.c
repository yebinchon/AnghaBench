
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct ngpcb {int dummy; } ;


 int EISCONN ;
 int PRIV_NETGRAPH_CONTROL ;
 int ng_attach_cntl (struct socket*) ;
 int priv_check (struct thread*,int ) ;
 struct ngpcb* sotongpcb (struct socket*) ;

__attribute__((used)) static int
ngc_attach(struct socket *so, int proto, struct thread *td)
{
 struct ngpcb *const pcbp = sotongpcb(so);
 int error;

 error = priv_check(td, PRIV_NETGRAPH_CONTROL);
 if (error)
  return (error);
 if (pcbp != ((void*)0))
  return (EISCONN);
 return (ng_attach_cntl(so));
}
