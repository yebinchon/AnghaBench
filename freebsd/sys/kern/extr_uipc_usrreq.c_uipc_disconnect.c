
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct unpcb* unp_conn; } ;
struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_disconnect (struct unpcb*,struct unpcb*) ;
 int unp_pcb_hold (struct unpcb*) ;
 int unp_pcb_owned_lock2 (struct unpcb*,struct unpcb*,int) ;
 scalar_t__ unp_pcb_rele (struct unpcb*) ;

__attribute__((used)) static int
uipc_disconnect(struct socket *so)
{
 struct unpcb *unp, *unp2;
 int freed;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_disconnect: unp == NULL"));

 UNP_PCB_LOCK(unp);
 if ((unp2 = unp->unp_conn) == ((void*)0)) {
  UNP_PCB_UNLOCK(unp);
  return (0);
 }
 if (__predict_true(unp != unp2)) {
  unp_pcb_owned_lock2(unp, unp2, freed);
  if (__predict_false(freed)) {
   UNP_PCB_UNLOCK(unp);
   return (0);
  }
  unp_pcb_hold(unp2);
 }
 unp_pcb_hold(unp);
 unp_disconnect(unp, unp2);
 if (unp_pcb_rele(unp) == 0)
  UNP_PCB_UNLOCK(unp);
 if ((unp != unp2) && unp_pcb_rele(unp2) == 0)
  UNP_PCB_UNLOCK(unp2);
 return (0);
}
