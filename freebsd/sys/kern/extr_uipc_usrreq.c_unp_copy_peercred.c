
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_flags; int unp_peercred; } ;
struct thread {int dummy; } ;


 int UNP_HAVEPC ;
 int UNP_WANTCRED ;
 int cru2xt (struct thread*,int *) ;
 int memcpy (int *,int *,int) ;

void
unp_copy_peercred(struct thread *td, struct unpcb *client_unp,
    struct unpcb *server_unp, struct unpcb *listen_unp)
{
 cru2xt(td, &client_unp->unp_peercred);
 client_unp->unp_flags |= UNP_HAVEPC;

 memcpy(&server_unp->unp_peercred, &listen_unp->unp_peercred,
     sizeof(server_unp->unp_peercred));
 server_unp->unp_flags |= UNP_HAVEPC;
 if (listen_unp->unp_flags & UNP_WANTCRED)
  client_unp->unp_flags |= UNP_WANTCRED;
}
