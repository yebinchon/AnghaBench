
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int * unp_socket; int unp_refcount; } ;


 int MPASS (int ) ;
 int UNP_PCB_LOCK_ASSERT (struct unpcb*) ;
 int UNP_PCB_LOCK_DESTROY (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int refcount_release (int *) ;
 int uma_zfree (int ,struct unpcb*) ;
 int unp_zone ;

__attribute__((used)) static int
unp_pcb_rele(struct unpcb *unp)
{
 int freed;

 UNP_PCB_LOCK_ASSERT(unp);
 MPASS(unp->unp_refcount);
 if ((freed = refcount_release(&unp->unp_refcount))) {

  MPASS(unp->unp_socket == ((void*)0));
  UNP_PCB_UNLOCK(unp);
  UNP_PCB_LOCK_DESTROY(unp);
  uma_zfree(unp_zone, unp);
 }
 return (freed);
}
