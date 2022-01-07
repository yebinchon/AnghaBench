
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;
struct socket {struct unpcb* so_pcb; } ;


 int KASSERT (int ,char*) ;
 int PRU_CONNECT2 ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int unp_connect2 (struct socket*,struct socket*,int ) ;
 int unp_pcb_lock2 (struct unpcb*,struct unpcb*) ;

__attribute__((used)) static int
uipc_connect2(struct socket *so1, struct socket *so2)
{
 struct unpcb *unp, *unp2;
 int error;

 unp = so1->so_pcb;
 KASSERT(unp != ((void*)0), ("uipc_connect2: unp == NULL"));
 unp2 = so2->so_pcb;
 KASSERT(unp2 != ((void*)0), ("uipc_connect2: unp2 == NULL"));
 if (unp != unp2)
  unp_pcb_lock2(unp, unp2);
 else
  UNP_PCB_LOCK(unp);
 error = unp_connect2(so1, so2, PRU_CONNECT2);
 if (unp != unp2)
  UNP_PCB_UNLOCK(unp2);
 UNP_PCB_UNLOCK(unp);
 return (error);
}
