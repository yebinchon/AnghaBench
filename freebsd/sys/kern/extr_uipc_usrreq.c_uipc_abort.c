
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct unpcb* unp_conn; } ;
struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK_ASSERT (struct unpcb*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_drop (struct unpcb*) ;
 int unp_pcb_hold (struct unpcb*) ;

__attribute__((used)) static void
uipc_abort(struct socket *so)
{
 struct unpcb *unp, *unp2;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_abort: unp == NULL"));
 UNP_PCB_UNLOCK_ASSERT(unp);

 UNP_PCB_LOCK(unp);
 unp2 = unp->unp_conn;
 if (unp2 != ((void*)0)) {
  unp_pcb_hold(unp2);
  UNP_PCB_UNLOCK(unp);
  unp_drop(unp2);
 } else
  UNP_PCB_UNLOCK(unp);
}
