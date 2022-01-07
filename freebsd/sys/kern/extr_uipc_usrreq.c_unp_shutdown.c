
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct socket* unp_socket; struct unpcb* unp_conn; } ;
struct socket {scalar_t__ so_type; } ;


 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int UNP_PCB_LOCK_ASSERT (struct unpcb*) ;
 int socantrcvmore (struct socket*) ;

__attribute__((used)) static void
unp_shutdown(struct unpcb *unp)
{
 struct unpcb *unp2;
 struct socket *so;

 UNP_PCB_LOCK_ASSERT(unp);

 unp2 = unp->unp_conn;
 if ((unp->unp_socket->so_type == SOCK_STREAM ||
     (unp->unp_socket->so_type == SOCK_SEQPACKET)) && unp2 != ((void*)0)) {
  so = unp2->unp_socket;
  if (so != ((void*)0))
   socantrcvmore(so);
 }
}
