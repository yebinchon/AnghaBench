
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_flags; struct unpcb* unp_conn; int unp_refs; } ;
struct socket {int so_type; } ;


 int EPROTOTYPE ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct unpcb*,int ) ;
 int PRU_CONNECT ;



 int UNP_CONNWAIT ;
 int UNP_NASCENT ;
 int UNP_PCB_LOCK_ASSERT (struct unpcb*) ;
 int UNP_REF_LIST_LOCK () ;
 int UNP_REF_LIST_UNLOCK () ;
 int panic (char*) ;
 int soisconnected (struct socket*) ;
 int soisconnecting (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_pcb_hold (struct unpcb*) ;
 int unp_reflink ;

__attribute__((used)) static int
unp_connect2(struct socket *so, struct socket *so2, int req)
{
 struct unpcb *unp;
 struct unpcb *unp2;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("unp_connect2: unp == NULL"));
 unp2 = sotounpcb(so2);
 KASSERT(unp2 != ((void*)0), ("unp_connect2: unp2 == NULL"));

 UNP_PCB_LOCK_ASSERT(unp);
 UNP_PCB_LOCK_ASSERT(unp2);

 if (so2->so_type != so->so_type)
  return (EPROTOTYPE);
 unp2->unp_flags &= ~UNP_NASCENT;
 unp->unp_conn = unp2;
 unp_pcb_hold(unp2);
 unp_pcb_hold(unp);
 switch (so->so_type) {
 case 130:
  UNP_REF_LIST_LOCK();
  LIST_INSERT_HEAD(&unp2->unp_refs, unp, unp_reflink);
  UNP_REF_LIST_UNLOCK();
  soisconnected(so);
  break;

 case 128:
 case 129:
  unp2->unp_conn = unp;
  if (req == PRU_CONNECT &&
      ((unp->unp_flags | unp2->unp_flags) & UNP_CONNWAIT))
   soisconnecting(so);
  else
   soisconnected(so);
  soisconnected(so2);
  break;

 default:
  panic("unp_connect2");
 }
 return (0);
}
