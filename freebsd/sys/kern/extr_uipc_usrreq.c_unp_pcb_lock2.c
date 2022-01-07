
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;


 int MPASS (int) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK_ASSERT (struct unpcb*) ;

__attribute__((used)) static void
unp_pcb_lock2(struct unpcb *unp, struct unpcb *unp2)
{
 MPASS(unp != unp2);
 UNP_PCB_UNLOCK_ASSERT(unp);
 UNP_PCB_UNLOCK_ASSERT(unp2);
 if ((uintptr_t)unp2 > (uintptr_t)unp) {
  UNP_PCB_LOCK(unp);
  UNP_PCB_LOCK(unp2);
 } else {
  UNP_PCB_LOCK(unp2);
  UNP_PCB_LOCK(unp);
 }
}
