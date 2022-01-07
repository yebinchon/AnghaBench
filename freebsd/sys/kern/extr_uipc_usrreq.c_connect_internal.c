
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int * unp_conn; } ;
struct thread {int dummy; } ;
struct socket {struct unpcb* so_pcb; } ;
struct sockaddr {int dummy; } ;


 int EISCONN ;
 int ENOTCONN ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int unp_connect (struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
connect_internal(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 int error;
 struct unpcb *unp;

 unp = so->so_pcb;
 if (unp->unp_conn != ((void*)0))
  return (EISCONN);
 error = unp_connect(so, nam, td);
 if (error)
  return (error);
 UNP_PCB_LOCK(unp);
 if (unp->unp_conn == ((void*)0)) {
  UNP_PCB_UNLOCK(unp);
  if (error == 0)
   error = ENOTCONN;
 }
 return (error);
}
