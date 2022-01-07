
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_refcount; } ;


 int MPASS (int ) ;
 int refcount_acquire (int *) ;

__attribute__((used)) static void
unp_pcb_hold(struct unpcb *unp)
{
 MPASS(unp->unp_refcount);
 refcount_acquire(&unp->unp_refcount);
}
