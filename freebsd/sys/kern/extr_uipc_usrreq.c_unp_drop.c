
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct unpcb* unp_conn; struct socket* unp_socket; } ;
struct socket {int so_error; } ;


 int ECONNRESET ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int unp_disconnect (struct unpcb*,struct unpcb*) ;
 int unp_pcb_hold (struct unpcb*) ;
 int unp_pcb_owned_lock2 (struct unpcb*,struct unpcb*,int) ;
 scalar_t__ unp_pcb_rele (struct unpcb*) ;

__attribute__((used)) static void
unp_drop(struct unpcb *unp)
{
 struct socket *so = unp->unp_socket;
 struct unpcb *unp2;
 int freed;
 UNP_PCB_LOCK(unp);
 if (so)
  so->so_error = ECONNRESET;
 unp2 = unp->unp_conn;
 if (unp2 == unp) {
  unp_disconnect(unp, unp2);
 } else if (unp2 != ((void*)0)) {
  unp_pcb_hold(unp2);
  unp_pcb_owned_lock2(unp, unp2, freed);
  unp_disconnect(unp, unp2);
  if (unp_pcb_rele(unp2) == 0)
   UNP_PCB_UNLOCK(unp2);
 }
 if (unp_pcb_rele(unp) == 0)
  UNP_PCB_UNLOCK(unp);
}
