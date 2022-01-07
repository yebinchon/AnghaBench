
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int PRIV_NET_RAW ;
 int priv_check (struct thread*,int ) ;
 int raw_attach (struct socket*,int) ;
 int * sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_uattach(struct socket *so, int proto, struct thread *td)
{
 int error;





 KASSERT(sotorawcb(so) != ((void*)0), ("raw_uattach: so_pcb == NULL"));

 if (td != ((void*)0)) {
  error = priv_check(td, PRIV_NET_RAW);
  if (error)
   return (error);
 }
 return (raw_attach(so, proto));
}
