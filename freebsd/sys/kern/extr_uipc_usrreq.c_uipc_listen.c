
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_peercred; int * unp_conn; int * unp_vnode; } ;
struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; } ;


 int EDESTADDRREQ ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int KASSERT (int ,char*) ;
 int SOCK_LOCK (struct socket*) ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int SOCK_UNLOCK (struct socket*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int cru2xt (struct thread*,int *) ;
 int solisten_proto (struct socket*,int) ;
 int solisten_proto_check (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;

__attribute__((used)) static int
uipc_listen(struct socket *so, int backlog, struct thread *td)
{
 struct unpcb *unp;
 int error;

 if (so->so_type != SOCK_STREAM && so->so_type != SOCK_SEQPACKET)
  return (EOPNOTSUPP);

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_listen: unp == NULL"));

 UNP_PCB_LOCK(unp);
 if (unp->unp_vnode == ((void*)0)) {

  error = unp->unp_conn != ((void*)0) ? EINVAL : EDESTADDRREQ;
  UNP_PCB_UNLOCK(unp);
  return (error);
 }

 SOCK_LOCK(so);
 error = solisten_proto_check(so);
 if (error == 0) {
  cru2xt(td, &unp->unp_peercred);
  solisten_proto(so, backlog);
 }
 SOCK_UNLOCK(so);
 UNP_PCB_UNLOCK(unp);
 return (error);
}
